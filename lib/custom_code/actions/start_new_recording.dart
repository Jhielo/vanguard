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

Future<void> startNewRecording(
  bool isTracking,
  bool isPaused,
  String? currentSessionID,
  String routePoints,
  DateTime startTime, // Separated start and end times
  DateTime endTime,
) async {
  final supabase = Supabase.instance.client;

  // Check if tracking is currently active
  if (isTracking && currentSessionID != null) {
    // Stop the existing tracking session
    await stopTracking(currentSessionID, endTime);
  }

  // Handle the paused state
  if (isPaused && currentSessionID != null) {
    // Resume tracking if it was paused
    await resumeTracking(currentSessionID);
  } else {
    // Start a new recording session
    await startTracking(routePoints, startTime, endTime);
  }
}

// Function to stop tracking
Future<void> stopTracking(String sessionID, DateTime endTime) async {
  final supabase = Supabase.instance.client;
  await supabase
      .from('gps_sessions')
      .update({'status': 'stopped', 'end_time': endTime.toIso8601String()}).eq(
          'id', sessionID);

  print("Tracking stopped for session: $sessionID");
}

// Function to resume tracking
Future<void> resumeTracking(String sessionID) async {
  final supabase = Supabase.instance.client;
  await supabase
      .from('gps_sessions')
      .update({'status': 'tracking'}).eq('id', sessionID);

  print("Tracking resumed for session: $sessionID");
}

// Function to start tracking
Future<void> startTracking(
    String routePoints, DateTime startTime, DateTime endTime) async {
  final supabase = Supabase.instance.client;
  final response = await supabase.from('gps_sessions').insert({
    'route_points': routePoints,
    'start_time': startTime.toIso8601String(),
    'end_time': endTime.toIso8601String(),
    'status': 'tracking',
  });

  if (response.error != null) {
    throw Exception('Failed to start tracking: ${response.error!.message}');
  }

  print("New tracking session started.");
}
