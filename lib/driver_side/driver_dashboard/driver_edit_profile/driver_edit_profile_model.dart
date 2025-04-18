import '/flutter_flow/flutter_flow_util.dart';
import 'driver_edit_profile_widget.dart' show DriverEditProfileWidget;
import 'package:flutter/material.dart';

class DriverEditProfileModel extends FlutterFlowModel<DriverEditProfileWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Name widget.
  FocusNode? nameFocusNode;
  TextEditingController? nameTextController;
  String? Function(BuildContext, String?)? nameTextControllerValidator;
  // State field(s) for ContactNumber widget.
  FocusNode? contactNumberFocusNode;
  TextEditingController? contactNumberTextController;
  String? Function(BuildContext, String?)? contactNumberTextControllerValidator;
  // State field(s) for LicenseNumber widget.
  FocusNode? licenseNumberFocusNode;
  TextEditingController? licenseNumberTextController;
  String? Function(BuildContext, String?)? licenseNumberTextControllerValidator;
  // State field(s) for PlateNumber widget.
  FocusNode? plateNumberFocusNode;
  TextEditingController? plateNumberTextController;
  String? Function(BuildContext, String?)? plateNumberTextControllerValidator;
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
    nameFocusNode?.dispose();
    nameTextController?.dispose();

    contactNumberFocusNode?.dispose();
    contactNumberTextController?.dispose();

    licenseNumberFocusNode?.dispose();
    licenseNumberTextController?.dispose();

    plateNumberFocusNode?.dispose();
    plateNumberTextController?.dispose();

    passwordFocusNode?.dispose();
    passwordTextController?.dispose();
  }
}
