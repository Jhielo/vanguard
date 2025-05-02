import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'driver_first_page_widget.dart' show DriverFirstPageWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class DriverFirstPageModel extends FlutterFlowModel<DriverFirstPageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;
  int get tabBarPreviousIndex =>
      tabBarController != null ? tabBarController!.previousIndex : 0;

  // State field(s) for Username widget.
  FocusNode? usernameFocusNode;
  TextEditingController? usernameTextController;
  String? Function(BuildContext, String?)? usernameTextControllerValidator;
  // State field(s) for PlateNumber widget.
  FocusNode? plateNumberFocusNode;
  TextEditingController? plateNumberTextController;
  String? Function(BuildContext, String?)? plateNumberTextControllerValidator;
  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<UsersRow>? userexist;
  // State field(s) for Name widget.
  FocusNode? nameFocusNode;
  TextEditingController? nameTextController;
  String? Function(BuildContext, String?)? nameTextControllerValidator;
  // State field(s) for ContactNumber widget.
  FocusNode? contactNumberFocusNode;
  TextEditingController? contactNumberTextController;
  final contactNumberMask = MaskTextInputFormatter(mask: '(###) ###-####');
  String? Function(BuildContext, String?)? contactNumberTextControllerValidator;
  // State field(s) for PlateNumber2 widget.
  FocusNode? plateNumber2FocusNode;
  TextEditingController? plateNumber2TextController;
  String? Function(BuildContext, String?)? plateNumber2TextControllerValidator;
  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<UsersRow>? platenumberExists;
  // Stores action output result for [Custom Action - getUuid] action in Button widget.
  String? uuid;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tabBarController?.dispose();
    usernameFocusNode?.dispose();
    usernameTextController?.dispose();

    plateNumberFocusNode?.dispose();
    plateNumberTextController?.dispose();

    nameFocusNode?.dispose();
    nameTextController?.dispose();

    contactNumberFocusNode?.dispose();
    contactNumberTextController?.dispose();

    plateNumber2FocusNode?.dispose();
    plateNumber2TextController?.dispose();
  }
}
