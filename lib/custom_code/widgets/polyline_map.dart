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

import 'package:google_maps_flutter/google_maps_flutter.dart' as google_maps;
import 'package:flutter_polyline_points/flutter_polyline_points.dart';

class PolylineMap extends StatefulWidget {
  const PolylineMap({
    super.key,
    this.width,
    this.height,
    required this.originLatitude,
    required this.originLongitude,
    required this.destinationLatitude,
    required this.destinationLongitude,
    required this.googleApiKey,
  });

  final double? width;
  final double? height;
  final double originLatitude;
  final double originLongitude;
  final double destinationLatitude;
  final double destinationLongitude;
  final String googleApiKey;

  @override
  State<PolylineMap> createState() => _PolylineMapState();
}

class _PolylineMapState extends State<PolylineMap> {
  late google_maps.GoogleMapController _mapController;
  Set<google_maps.Polyline> _polylines = {};
  List<google_maps.LatLng> _polylineCoordinates = [];

  @override
  void initState() {
    super.initState();
    _fetchPolyline();
  }

  Future<void> _fetchPolyline() async {
    try {
      PolylinePoints polylinePoints = PolylinePoints();
      PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
        googleApiKey: widget.googleApiKey,
        request: PolylineRequest(
          origin: PointLatLng(widget.originLatitude, widget.originLongitude),
          destination: PointLatLng(
              widget.destinationLatitude, widget.destinationLongitude),
          mode: TravelMode.driving,
        ),
      );

      print(result.points);

      if (result.points.isNotEmpty) {
        setState(() {
          _polylineCoordinates = result.points
              .map((point) =>
                  google_maps.LatLng(point.latitude, point.longitude))
              .toList();

          _polylines.add(
            google_maps.Polyline(
              polylineId: const google_maps.PolylineId('polyline'),
              points: _polylineCoordinates,
              color: Colors.red,
              width: 4,
            ),
          );
        });
      }
    } catch (e) {
      print("Error fetching polyline: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width ?? double.infinity,
      height: widget.height ?? double.infinity,
      child: google_maps.GoogleMap(
        onMapCreated: (controller) {
          _mapController = controller;
        },
        initialCameraPosition: google_maps.CameraPosition(
          target:
              google_maps.LatLng(widget.originLatitude, widget.originLongitude),
          zoom: 14,
        ),
        polylines: _polylines,
        markers: {
          google_maps.Marker(
            markerId: const google_maps.MarkerId('origin'),
            position: google_maps.LatLng(
                widget.originLatitude, widget.originLongitude),
          ),
          google_maps.Marker(
            markerId: const google_maps.MarkerId('destination'),
            position: google_maps.LatLng(
                widget.destinationLatitude, widget.destinationLongitude),
          ),
        },
      ),
    );
  }
}
