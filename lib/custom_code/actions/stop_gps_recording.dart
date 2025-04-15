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

Future<bool> stopGPSRecording(
  String sessionID,
  List<String> routePoints, // List of GPS coordinates
  DateTime endTime, // Use a single DateTime instead of Timestamp Range
) async {
  final supabase = Supabase.instance.client;

  try {
    final response = await supabase
        .from('gps_sessions')
        .update({
          'route_points': routePoints, // Update recorded route points
          'end_time': endTime.toIso8601String(), // Set end time
          'status': 'completed', // Mark session as completed
        })
        .eq('id', sessionID)
        .select();

    if (response.isEmpty) {
      throw Exception('Failed to stop GPS session.');
    }

    return true; // Successfully stopped recording
  } catch (e) {
    print('Error stopping GPS recording: $e');
    return false;
  }
}
