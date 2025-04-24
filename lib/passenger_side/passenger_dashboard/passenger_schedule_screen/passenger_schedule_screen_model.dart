import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'passenger_schedule_screen_widget.dart'
    show PassengerScheduleScreenWidget;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PassengerScheduleScreenModel
    extends FlutterFlowModel<PassengerScheduleScreenWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for DropDown widget.
  String? dropDownValue1;
  FormFieldController<String>? dropDownValueController1;
  // State field(s) for DropDown widget.
  String? dropDownValue2;
  FormFieldController<String>? dropDownValueController2;
  DateTime? datePicked;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
