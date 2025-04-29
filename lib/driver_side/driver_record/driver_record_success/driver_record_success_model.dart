import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'driver_record_success_widget.dart' show DriverRecordSuccessWidget;
import 'package:flutter/material.dart';

class DriverRecordSuccessModel
    extends FlutterFlowModel<DriverRecordSuccessWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Custom Action - getUuid] action in DriverRecordSuccess widget.
  String? uuid;
  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<VansDatasetRow>? isAlreadySaved;
  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<VansDatasetRow>? isSaved;
  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<VansDatasetRow>? isAlreadyDeleted;
  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<VansDatasetRow>? isDeleted;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
