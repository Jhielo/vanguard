import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'passenger_login_widget.dart' show PassengerLoginWidget;
import 'package:flutter/material.dart';

class PassengerLoginModel extends FlutterFlowModel<PassengerLoginWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for PlateNumber widget.
  FocusNode? plateNumberFocusNode;
  TextEditingController? plateNumberTextController;
  String? Function(BuildContext, String?)? plateNumberTextControllerValidator;
  // State field(s) for LicenseNumber widget.
  FocusNode? licenseNumberFocusNode;
  TextEditingController? licenseNumberTextController;
  String? Function(BuildContext, String?)? licenseNumberTextControllerValidator;
  // State field(s) for Password widget.
  FocusNode? passwordFocusNode;
  TextEditingController? passwordTextController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordTextControllerValidator;

  @override
  void initState(BuildContext context) {
    passwordVisibility = false;
  }

  @override
  void dispose() {
    plateNumberFocusNode?.dispose();
    plateNumberTextController?.dispose();

    licenseNumberFocusNode?.dispose();
    licenseNumberTextController?.dispose();

    passwordFocusNode?.dispose();
    passwordTextController?.dispose();
  }
}
