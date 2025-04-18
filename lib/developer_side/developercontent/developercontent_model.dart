import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'developercontent_widget.dart' show DevelopercontentWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class DevelopercontentModel extends FlutterFlowModel<DevelopercontentWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for name widget.
  FocusNode? nameFocusNode;
  TextEditingController? nameTextController;
  String? Function(BuildContext, String?)? nameTextControllerValidator;
  // State field(s) for vehicle_plate widget.
  FocusNode? vehiclePlateFocusNode;
  TextEditingController? vehiclePlateTextController;
  String? Function(BuildContext, String?)? vehiclePlateTextControllerValidator;
  // State field(s) for departure_time widget.
  FocusNode? departureTimeFocusNode;
  TextEditingController? departureTimeTextController;
  String? Function(BuildContext, String?)? departureTimeTextControllerValidator;
  // State field(s) for arrival_time widget.
  FocusNode? arrivalTimeFocusNode;
  TextEditingController? arrivalTimeTextController;
  final arrivalTimeMask = MaskTextInputFormatter(mask: '##/##/####');
  String? Function(BuildContext, String?)? arrivalTimeTextControllerValidator;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    nameFocusNode?.dispose();
    nameTextController?.dispose();

    vehiclePlateFocusNode?.dispose();
    vehiclePlateTextController?.dispose();

    departureTimeFocusNode?.dispose();
    departureTimeTextController?.dispose();

    arrivalTimeFocusNode?.dispose();
    arrivalTimeTextController?.dispose();
  }
}
