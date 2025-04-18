// Automatic FlutterFlow imports
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';

class LiveTrackingMap extends StatefulWidget {
  final LatLng sourceLocation;
  final LatLng destinationLocation;

  const LiveTrackingMap({
    Key? key,
    required this.sourceLocation,
    required this.destinationLocation,
  }) : super(key: key);

  @override
  State<LiveTrackingMap> createState() => _LiveTrackingMapState();
}

class _LiveTrackingMapState extends State<LiveTrackingMap> {
  GoogleMapController? _mapController;
  List<LatLng> polylineCoordinates = [];
  LocationData? currentLocation;

  @override
  void initState() {
    super.initState();
    getCurrentLocation();
    getPolyPoints();
  }

  void getCurrentLocation() async {
    Location location = Location();
    LocationData locationData = await location.getLocation();
    setState(() {
      currentLocation = locationData;
    });
  }

  void getPolyPoints() async {
    PolylinePoints polylinePoints = PolylinePoints();
    PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
      "YOUR_GOOGLE_API_KEY", // Replace with your actual API key
      PointLatLng(
          widget.sourceLocation.latitude, widget.sourceLocation.longitude),
      PointLatLng(widget.destinationLocation.latitude,
          widget.destinationLocation.longitude),
    );

    if (result.points.isNotEmpty) {
      setState(() {
        polylineCoordinates = result.points
            .map((point) => LatLng(point.latitude, point.longitude))
            .toList();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 360,
      height: 250,
      child: currentLocation == null
          ? const Center(child: CircularProgressIndicator())
          : GoogleMap(
              initialCameraPosition: CameraPosition(
                target: LatLng(
                  currentLocation!.latitude!,
                  currentLocation!.longitude!,
                ),
                zoom: 14.5,
              ),
              onMapCreated: (controller) => _mapController = controller,
              polylines: {
                Polyline(
                  polylineId: const PolylineId("route"),
                  points: polylineCoordinates,
                  color: Colors.blue,
                  width: 5,
                ),
              },
              markers: {
                Marker(
                  markerId: const MarkerId("current"),
                  position: LatLng(
                    currentLocation!.latitude!,
                    currentLocation!.longitude!,
                  ),
                ),
                Marker(
                  markerId: const MarkerId("source"),
                  position: widget.sourceLocation,
                ),
                Marker(
                  markerId: const MarkerId("destination"),
                  position: widget.destinationLocation,
                ),
              },
            ),
    );
  }
}
