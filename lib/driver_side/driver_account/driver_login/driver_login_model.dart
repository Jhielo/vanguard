import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'driver_login_widget.dart' show DriverLoginWidget;
import 'package:flutter/material.dart';

class DriverLoginModel extends FlutterFlowModel<DriverLoginWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for LicenseNumber widget.
  FocusNode? licenseNumberFocusNode;
  TextEditingController? licenseNumberTextController;
  String? Function(BuildContext, String?)? licenseNumberTextControllerValidator;
  // State field(s) for PlateNumber widget.
  FocusNode? plateNumberFocusNode;
  TextEditingController? plateNumberTextController;
  String? Function(BuildContext, String?)? plateNumberTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    licenseNumberFocusNode?.dispose();
    licenseNumberTextController?.dispose();

    plateNumberFocusNode?.dispose();
    plateNumberTextController?.dispose();
  }
}
