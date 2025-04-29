import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'passenger_first_page_widget.dart' show PassengerFirstPageWidget;
import 'package:flutter/material.dart';

class PassengerFirstPageModel
    extends FlutterFlowModel<PassengerFirstPageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;
  int get tabBarPreviousIndex =>
      tabBarController != null ? tabBarController!.previousIndex : 0;

  // State field(s) for passenger_email_address widget.
  FocusNode? passengerEmailAddressFocusNode1;
  TextEditingController? passengerEmailAddressTextController1;
  String? Function(BuildContext, String?)?
      passengerEmailAddressTextController1Validator;
  // State field(s) for passenger_password widget.
  FocusNode? passengerPasswordFocusNode1;
  TextEditingController? passengerPasswordTextController1;
  late bool passengerPasswordVisibility1;
  String? Function(BuildContext, String?)?
      passengerPasswordTextController1Validator;
  // Stores action output result for [Backend Call - Query Rows] action in passenger_login_btn widget.
  List<UsersRow>? passengerMatch;
  // State field(s) for passenger_name widget.
  FocusNode? passengerNameFocusNode;
  TextEditingController? passengerNameTextController;
  String? Function(BuildContext, String?)? passengerNameTextControllerValidator;
  // State field(s) for passenger_email_address widget.
  FocusNode? passengerEmailAddressFocusNode2;
  TextEditingController? passengerEmailAddressTextController2;
  String? Function(BuildContext, String?)?
      passengerEmailAddressTextController2Validator;
  // State field(s) for passenger_password widget.
  FocusNode? passengerPasswordFocusNode2;
  TextEditingController? passengerPasswordTextController2;
  late bool passengerPasswordVisibility2;
  String? Function(BuildContext, String?)?
      passengerPasswordTextController2Validator;
  // State field(s) for confirm_password widget.
  FocusNode? confirmPasswordFocusNode;
  TextEditingController? confirmPasswordTextController;
  late bool confirmPasswordVisibility;
  String? Function(BuildContext, String?)?
      confirmPasswordTextControllerValidator;

  @override
  void initState(BuildContext context) {
    passengerPasswordVisibility1 = false;
    passengerPasswordVisibility2 = false;
    confirmPasswordVisibility = false;
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    passengerEmailAddressFocusNode1?.dispose();
    passengerEmailAddressTextController1?.dispose();

    passengerPasswordFocusNode1?.dispose();
    passengerPasswordTextController1?.dispose();

    passengerNameFocusNode?.dispose();
    passengerNameTextController?.dispose();

    passengerEmailAddressFocusNode2?.dispose();
    passengerEmailAddressTextController2?.dispose();

    passengerPasswordFocusNode2?.dispose();
    passengerPasswordTextController2?.dispose();

    confirmPasswordFocusNode?.dispose();
    confirmPasswordTextController?.dispose();
  }
}
