import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'passenger_schedule_screen_widget.dart'
    show PassengerScheduleScreenWidget;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PassengerScheduleScreenModel
    extends FlutterFlowModel<PassengerScheduleScreenWidget> {
  ///  Local state fields for this page.
  /// estimated time of departure
  DateTime? etodeparture;

  /// estimated time of arrival
  DateTime? etoarrival;

  ///  State fields for stateful widgets in this page.

  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  DateTime? datePicked;
  // Stores action output result for [Backend Call - API (PredictVans)] action in Button widget.
  ApiCallResponse? apiResult1ts;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
