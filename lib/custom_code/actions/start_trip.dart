// Automatic FlutterFlow imports
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<void> startTrip(String name, String plate, String route) async {
  final response =
      await Supabase.instance.client.from('vehicle_Tracking').insert({
    'name': name,
    'vehicle_plate': plate,
    'route': route,
    'departure_time': DateTime.now().toIso8601String(),
  }).execute();

  if (response.error != null) {
    print("Error starting trip: ${response.error!.message}");
  } else {
    print("Trip started successfully ✅");
  }
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
