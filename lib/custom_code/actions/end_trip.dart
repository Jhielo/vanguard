// Automatic FlutterFlow imports
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<void> endTrip(String name, String plate, String route) async {
  final response = await Supabase.instance.client
      .from('vehicle_tracking')
      .update({'arrival_time': DateTime.now().toIso8601String()})
      .match({
        'name': name,
        'vehicle_plate': plate,
        'route': route,
      })
      .is_('arrival_time', null)
      .order('departure_time', ascending: false)
      .limit(1)
      .execute();

  if (response.error != null) {
    print("Error ending trip: ${response.error!.message}");
  } else {
    print("Trip ended successfully ✅");
  }
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
