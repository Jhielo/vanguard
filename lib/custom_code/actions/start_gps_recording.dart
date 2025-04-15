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

Future<String> startGpsRecording(
  bool isTracking,
  bool isPaused,
  String? currentSessionID,
  List<String>
      routePoints, // Changed to a list of strings (latitude, longitude)
  DateTime startTime, // Separated start and end times for better compatibility
  DateTime endTime,
) async {
  final supabase = Supabase.instance.client;

  try {
    if (!isTracking) {
      // Start a new GPS recording session
      final response = await supabase.from('gps_sessions').insert({
        'route_points': routePoints, // Expecting a list of GPS points
        'start_time': startTime.toIso8601String(),
        'end_time': endTime.toIso8601String(),
        'status': 'active', // or 'tracking'
      }).select();

      if (response.isEmpty) {
        throw Exception('Failed to create a new session.');
      }

      // Return the new session ID
      final newSessionID = response[0]['id'].toString();
      return newSessionID;
    } else if (isPaused && currentSessionID != null) {
      // Resume tracking if paused
      final response = await supabase
          .from('gps_sessions')
          .update({
            'status': 'active', // Update status to active
            'end_time':
                endTime.toIso8601String(), // Update end time if necessary
          })
          .eq('id', currentSessionID)
          .select();

      if (response.isEmpty) {
        throw Exception('Failed to resume session.');
      }

      return currentSessionID; // Return the same session ID
    } else {
      // If already tracking, return the current session ID
      return currentSessionID ?? '';
    }
  } catch (e) {
    print('Error starting GPS recording: $e');
    return '';
  }
}
