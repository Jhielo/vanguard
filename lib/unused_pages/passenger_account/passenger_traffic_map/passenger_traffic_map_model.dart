import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'passenger_traffic_map_widget.dart' show PassengerTrafficMapWidget;
import 'package:flutter/material.dart';

class PassengerTrafficMapModel
    extends FlutterFlowModel<PassengerTrafficMapWidget> {
  ///  Local state fields for this page.

  bool isPaused = false;

  bool? isStarted;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (googleAPI)] action in PassengerTrafficMap widget.
  ApiCallResponse? apiResultdu3;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for GoogleMap widget.
  LatLng? googleMapsCenter;
  final googleMapsController = Completer<GoogleMapController>();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
