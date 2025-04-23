import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'driver_first_page_f_widget.dart' show DriverFirstPageFWidget;
import 'package:flutter/material.dart';

class DriverFirstPageFModel extends FlutterFlowModel<DriverFirstPageFWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;
  int get tabBarPreviousIndex =>
      tabBarController != null ? tabBarController!.previousIndex : 0;

  // State field(s) for LicenseNumber widget.
  FocusNode? licenseNumberFocusNode1;
  TextEditingController? licenseNumberTextController1;
  String? Function(BuildContext, String?)?
      licenseNumberTextController1Validator;
  // State field(s) for PlateNumber widget.
  FocusNode? plateNumberFocusNode1;
  TextEditingController? plateNumberTextController1;
  String? Function(BuildContext, String?)? plateNumberTextController1Validator;
  // State field(s) for Name widget.
  FocusNode? nameFocusNode;
  TextEditingController? nameTextController;
  String? Function(BuildContext, String?)? nameTextControllerValidator;
  // State field(s) for ContactNumber widget.
  FocusNode? contactNumberFocusNode;
  TextEditingController? contactNumberTextController;
  String? Function(BuildContext, String?)? contactNumberTextControllerValidator;
  // State field(s) for LicenseNumber widget.
  FocusNode? licenseNumberFocusNode2;
  TextEditingController? licenseNumberTextController2;
  String? Function(BuildContext, String?)?
      licenseNumberTextController2Validator;
  // State field(s) for PlateNumber widget.
  FocusNode? plateNumberFocusNode2;
  TextEditingController? plateNumberTextController2;
  String? Function(BuildContext, String?)? plateNumberTextController2Validator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tabBarController?.dispose();
    licenseNumberFocusNode1?.dispose();
    licenseNumberTextController1?.dispose();

    plateNumberFocusNode1?.dispose();
    plateNumberTextController1?.dispose();

    nameFocusNode?.dispose();
    nameTextController?.dispose();

    contactNumberFocusNode?.dispose();
    contactNumberTextController?.dispose();

    licenseNumberFocusNode2?.dispose();
    licenseNumberTextController2?.dispose();

    plateNumberFocusNode2?.dispose();
    plateNumberTextController2?.dispose();
  }
}
