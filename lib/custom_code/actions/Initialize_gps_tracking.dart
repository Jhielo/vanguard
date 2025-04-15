// Automatic FlutterFlow imports
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:geolocator/geolocator.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future initializeGpsTracking(BuildContext context) async {
  // Initialize Supabase if not already initialized
  try {
    Supabase.instance.client;
  } catch (e) {
    await Supabase.initialize(
      url: 'https://wphffnhurkdcypcyfvcg.supabase.co',
      anonKey:
          'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6IndwaGZmbmh1cmtkY3lwY3lmdmNnIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzY4OTk2NTIsImV4cCI6MjA1MjQ3NTY1Mn0._0c9Bw2wwCtVcXjxq-X36GGYwL9YnVR-_mee-Uf2AIc',
    );
  }

  // Check location permissions
  bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
  if (!serviceEnabled) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
          content: Text('Location services are disabled. Please enable them.')),
    );
    return false;
  }

  LocationPermission permission = await Geolocator.checkPermission();
  if (permission == LocationPermission.denied) {
    permission = await Geolocator.requestPermission();
    if (permission == LocationPermission.denied) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Location permissions are denied')),
      );
      return false;
    }
  }

  if (permission == LocationPermission.deniedForever) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Location permissions are permanently denied')),
    );
    return false;
  }

  // Get current position to verify everything works
  try {
    await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
    return true;
  } catch (e) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Error getting current position: $e')),
    );
    return false;
  }
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
