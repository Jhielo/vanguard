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
  // State field(s) for PlateNumber_password widget.
  FocusNode? plateNumberPasswordFocusNode;
  TextEditingController? plateNumberPasswordTextController;
  String? Function(BuildContext, String?)?
      plateNumberPasswordTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    licenseNumberFocusNode?.dispose();
    licenseNumberTextController?.dispose();

    plateNumberPasswordFocusNode?.dispose();
    plateNumberPasswordTextController?.dispose();
  }
}
