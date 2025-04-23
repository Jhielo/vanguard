import '/flutter_flow/flutter_flow_util.dart';
import 'passenger_login_widget.dart' show PassengerLoginWidget;
import 'package:flutter/material.dart';

class PassengerLoginModel extends FlutterFlowModel<PassengerLoginWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Username widget.
  FocusNode? usernameFocusNode;
  TextEditingController? usernameTextController;
  String? Function(BuildContext, String?)? usernameTextControllerValidator;
  // State field(s) for PassengerEmail widget.
  FocusNode? passengerEmailFocusNode;
  TextEditingController? passengerEmailTextController;
  String? Function(BuildContext, String?)?
      passengerEmailTextControllerValidator;
  // State field(s) for PassengerPassword widget.
  FocusNode? passengerPasswordFocusNode;
  TextEditingController? passengerPasswordTextController;
  late bool passengerPasswordVisibility;
  String? Function(BuildContext, String?)?
      passengerPasswordTextControllerValidator;

  @override
  void initState(BuildContext context) {
    passengerPasswordVisibility = false;
  }

  @override
  void dispose() {
    usernameFocusNode?.dispose();
    usernameTextController?.dispose();

    passengerEmailFocusNode?.dispose();
    passengerEmailTextController?.dispose();

    passengerPasswordFocusNode?.dispose();
    passengerPasswordTextController?.dispose();
  }
}
