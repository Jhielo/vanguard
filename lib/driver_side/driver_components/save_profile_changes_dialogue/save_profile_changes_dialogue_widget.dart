import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'save_profile_changes_dialogue_model.dart';
export 'save_profile_changes_dialogue_model.dart';

/// To amend or discard the changes from the Profile
class SaveProfileChangesDialogueWidget extends StatefulWidget {
  const SaveProfileChangesDialogueWidget({super.key});

  @override
  State<SaveProfileChangesDialogueWidget> createState() =>
      _SaveProfileChangesDialogueWidgetState();
}

class _SaveProfileChangesDialogueWidgetState
    extends State<SaveProfileChangesDialogueWidget> {
  late SaveProfileChangesDialogueModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SaveProfileChangesDialogueModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.transparent,
      ),
      child: Align(
        alignment: AlignmentDirectional(0.0, 0.0),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(24.0, 24.0, 24.0, 24.0),
          child: Container(
            width: 300.0,
            height: 240.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
              boxShadow: [
                BoxShadow(
                  blurRadius: 8.0,
                  color: Color(0x33000000),
                  offset: Offset(
                    0.0,
                    4.0,
                  ),
                  spreadRadius: 0.0,
                )
              ],
              borderRadius: BorderRadius.circular(16.0),
            ),
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                    child: Text(
                      'Save Changes?',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context)
                          .headlineSmall
                          .override(
                            font: FlutterFlowTheme.of(context).headlineSmall,
                            color: FlutterFlowTheme.of(context).primaryText,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                    child: Text(
                      'Do you want to save the changes you made to your profile?',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            font: FlutterFlowTheme.of(context).bodyMedium,
                            color: Color(0xFF9E9E9E),
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        FFButtonWidget(
                          onPressed: () async {
                            Navigator.pop(context);
                          },
                          text: 'Discard',
                          options: FFButtonOptions(
                            width: 120.0,
                            height: 48.0,
                            padding: EdgeInsets.all(8.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  font: FlutterFlowTheme.of(context).titleSmall,
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  fontSize: 18.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.normal,
                                ),
                            elevation: 0.0,
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                        ),
                        FFButtonWidget(
                          onPressed: () async {
                            FFAppState().isChangeSave = true;
                            safeSetState(() {});
                            Navigator.pop(context);
                          },
                          text: 'Save',
                          options: FFButtonOptions(
                            width: 120.0,
                            height: 48.0,
                            padding: EdgeInsets.all(8.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: Color(0xFF1D2D80),
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  font: FlutterFlowTheme.of(context).titleSmall,
                                  color: Colors.white,
                                  fontSize: 18.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.normal,
                                ),
                            elevation: 0.0,
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                        ),
                      ],
                    ),
                  ),
                ].divide(SizedBox(height: 20.0)),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
