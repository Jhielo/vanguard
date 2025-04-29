import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'developer_content_widget.dart' show DeveloperContentWidget;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DeveloperContentModel extends FlutterFlowModel<DeveloperContentWidget> {
  ///  Local state fields for this page.

  DateTime? selectedDate;

  ///  State fields for stateful widgets in this page.

  // State field(s) for name widget.
  FocusNode? nameFocusNode;
  TextEditingController? nameTextController;
  String? Function(BuildContext, String?)? nameTextControllerValidator;
  // State field(s) for vehicle_plate_number widget.
  FocusNode? vehiclePlateNumberFocusNode;
  TextEditingController? vehiclePlateNumberTextController;
  String? Function(BuildContext, String?)?
      vehiclePlateNumberTextControllerValidator;
  DateTime? datePicked1;
  DateTime? datePicked2;
  // State field(s) for Route_Select widget.
  String? routeSelectValue;
  FormFieldController<String>? routeSelectValueController;
  DateTime? datePicked3;
  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  VanTripsRow? insertTrip;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    nameFocusNode?.dispose();
    nameTextController?.dispose();

    vehiclePlateNumberFocusNode?.dispose();
    vehiclePlateNumberTextController?.dispose();
  }
}
