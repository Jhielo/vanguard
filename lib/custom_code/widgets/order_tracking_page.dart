// Automatic FlutterFlow imports
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// Set your widget name, define your parameter, and then add the
// boilerplate code using the green button on the right!
import 'dart:async';

import 'package:google_maps_flutter/google_maps_flutter.dart' as google_maps;
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:location/location.dart';

class OrderTrackingPage extends StatefulWidget {
  const OrderTrackingPage({
    super.key,
    this.width,
    this.height,
    required this.googleApiKey,
  });

  final double? width;
  final double? height;
  final String googleApiKey;

  @override
  State<OrderTrackingPage> createState() => _OrderTrackingPageState();
}

class _OrderTrackingPageState extends State<OrderTrackingPage> {
  final Completer<google_maps.GoogleMapController> _controller = Completer();

  static const google_maps.LatLng sorsogon =
      google_maps.LatLng(12.9763652, 124.0193223);
  static const google_maps.LatLng legazpi =
      google_maps.LatLng(13.1437659, 123.7451897);

  List<google_maps.LatLng> polyCoordinates = [];
  LocationData? currentLocation;

  Future<void> _getCurrentLocation() async {
    Location location = Location();

    location.getLocation().then(
      (location) {
        currentLocation = location;
      },
    );

    google_maps.GoogleMapController googleMapController =
        await _controller.future;

    location.onLocationChanged.listen(
      (newLoc) {
        currentLocation = newLoc;

        googleMapController.animateCamera(
          google_maps.CameraUpdate.newCameraPosition(
            google_maps.CameraPosition(
                zoom: 13.5,
                target: google_maps.LatLng(
                  newLoc.latitude!,
                  newLoc.longitude!,
                )),
          ),
        );

        setState(() {});
      },
    );
  }

  Future<void> _getPolyPoints() async {
    PolylinePoints polylinePoints = PolylinePoints();

    PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
      googleApiKey: widget.googleApiKey,
      request: PolylineRequest(
        origin: PointLatLng(legazpi.latitude, legazpi.longitude),
        destination: PointLatLng(sorsogon.latitude, sorsogon.longitude),
        mode: TravelMode.driving,
      ),
    );

    if (result.points.isNotEmpty) {
      result.points.forEach((point) {
        polyCoordinates.add(
          google_maps.LatLng(point.latitude, point.longitude),
        );
      });

      setState(() {});
    }
  }

  @override
  void initState() {
    _getCurrentLocation();
    _getPolyPoints();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width ?? double.infinity,
      height: widget.height ?? double.infinity,
      child: currentLocation == null
          ? const Center(child: Text("Loading..."))
          : google_maps.GoogleMap(
              initialCameraPosition: google_maps.CameraPosition(
                target: google_maps.LatLng(
                    currentLocation!.latitude!, currentLocation!.longitude!),
                zoom: 13.5,
              ), //CameraPosition
              polylines: {
                google_maps.Polyline(
                  polylineId: google_maps.PolylineId("route"),
                  points: polyCoordinates,
                  color: Colors.blue,
                  width: 4,
                ), //polyline
              },
              markers: {
                google_maps.Marker(
                  markerId: const google_maps.MarkerId("currentLocation"),
                  position: google_maps.LatLng(
                      currentLocation!.latitude!, currentLocation!.longitude!),
                ),
                const google_maps.Marker(
                  markerId: google_maps.MarkerId("sorsogon"),
                  position: sorsogon,
                ),
                const google_maps.Marker(
                  markerId: google_maps.MarkerId("legazpi"),
                  position: legazpi,
                ),
              }, //markers
              onMapCreated: (mapController) {
                _controller.complete(mapController);
              },
            ), //Gmap
    ); //Box
  } //widget
}
