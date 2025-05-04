import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'passenger_traffic_maps_widget.dart' show PassengerTrafficMapsWidget;
import 'package:flutter/material.dart';

class PassengerTrafficMapsModel
    extends FlutterFlowModel<PassengerTrafficMapsWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for GoogleMap widget.
  LatLng? googleMapsCenter;
  final googleMapsController = Completer<GoogleMapController>();
  // Stores action output result for [Backend Call - API (googleAPI)] action in Button widget.
  ApiCallResponse? apiResult9by;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
