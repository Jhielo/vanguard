// Automatic FlutterFlow imports
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:supabase_flutter/supabase_flutter.dart';

Future<String> finishGPSTracking(
  bool isTracking,
  bool isPaused,
  String? currentSessionID,
  List<String> routePoints, // Changed from String to List<String>
  DateTimeRange locationTimer,
) async {
  final supabase = Supabase.instance.client;

  // Check if tracking is active
  if (!isTracking) {
    return 'Tracking is not active.';
  }

  // Check if the session is paused
  if (isPaused) {
    return 'Tracking is paused. Please resume before finishing.';
  }

  // Validate session ID
  if (currentSessionID == null) {
    return 'Invalid session ID.';
  }

  // Convert route points to JSON format
  final routePointsJson = routePoints.map((point) => point).toList();

  try {
    // Save session data to Supabase
    final response = await supabase
        .from('gps_sessions')
        .update({
          'route_points': routePointsJson,
          'end_time': locationTimer.end.toIso8601String(),
          'status': 'completed', // Mark session as completed
        })
        .eq('id', currentSessionID)
        .select();

    if (response.isEmpty) {
      return 'Error: Session not found or update failed.';
    }

    return 'GPS tracking session completed successfully.';
  } catch (e) {
    return 'Error saving session: ${e.toString()}';
  }
}
