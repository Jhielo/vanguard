import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:provider/provider.dart';
import 'driver_saved_records_model.dart';
export 'driver_saved_records_model.dart';

class DriverSavedRecordsWidget extends StatefulWidget {
  const DriverSavedRecordsWidget({super.key});

  static String routeName = 'DriverSavedRecords';
  static String routePath = '/driverSavedRecords';

  @override
  State<DriverSavedRecordsWidget> createState() =>
      _DriverSavedRecordsWidgetState();
}

class _DriverSavedRecordsWidgetState extends State<DriverSavedRecordsWidget>
    with TickerProviderStateMixin {
  late DriverSavedRecordsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DriverSavedRecordsModel());

    animationsMap.addAll({
      'listViewOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(-50.0, 0.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'buttonOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 1.ms),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(-50.0, 0.0),
            end: Offset(0.0, 0.0),
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'textOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, -50.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'iconButtonOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, -50.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
    });
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: FlutterFlowTheme.of(context).info,
              size: 30.0,
            ),
            onPressed: () async {
              context.pushNamed(DriverDashboardWidget.routeName);
            },
          ).animateOnPageLoad(animationsMap['iconButtonOnPageLoadAnimation']!),
          title: Text(
            'Saved Recordings',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Google',
                  color: FlutterFlowTheme.of(context).info,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.bold,
                ),
          ).animateOnPageLoad(animationsMap['textOnPageLoadAnimation']!),
          actions: [],
          centerTitle: true,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: FutureBuilder<List<VansDatasetRow>>(
            future: VansDatasetTable().queryRows(
              queryFn: (q) => q
                  .eqOrNull(
                    'user_id',
                    FFAppState().currentUserID,
                  )
                  .order('created_at', ascending: true),
            ),
            builder: (context, snapshot) {
              // Customize what your widget looks like when it's loading.
              if (!snapshot.hasData) {
                return Center(
                  child: SizedBox(
                    width: 50.0,
                    height: 50.0,
                    child: SpinKitDoubleBounce(
                      color: FlutterFlowTheme.of(context).accent1,
                      size: 50.0,
                    ),
                  ),
                );
              }
              List<VansDatasetRow> listViewVansDatasetRowList = snapshot.data!;

              return ListView.builder(
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemCount: listViewVansDatasetRowList.length,
                itemBuilder: (context, listViewIndex) {
                  final listViewVansDatasetRow =
                      listViewVansDatasetRowList[listViewIndex];
                  return Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(12.0, 12.0, 12.0, 12.0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        context.pushNamed(
                          DriverSavedRecordsDisplayWidget.routeName,
                          queryParameters: {
                            'currentDate': serializeParam(
                              listViewVansDatasetRow.dateTrip,
                              ParamType.String,
                            ),
                            'currentStartTime': serializeParam(
                              listViewVansDatasetRow.departureTime,
                              ParamType.String,
                            ),
                            'currentEndTime': serializeParam(
                              listViewVansDatasetRow.arrivalTime,
                              ParamType.String,
                            ),
                            'currentRoute': serializeParam(
                              listViewVansDatasetRow.route,
                              ParamType.String,
                            ),
                            'currentDuration': serializeParam(
                              listViewVansDatasetRow.travelTime,
                              ParamType.String,
                            ),
                            'currentUuid': serializeParam(
                              listViewVansDatasetRow.id,
                              ParamType.String,
                            ),
                          }.withoutNulls,
                        );
                      },
                      text: 'Recording #${functions.increment(listViewIndex)}',
                      options: FFButtonOptions(
                        height: 80.0,
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: FlutterFlowTheme.of(context).primary,
                        textStyle:
                            FlutterFlowTheme.of(context).titleSmall.override(
                                  fontFamily: 'Google',
                                  color: FlutterFlowTheme.of(context).info,
                                  fontSize: 24.0,
                                  letterSpacing: 0.0,
                                ),
                        elevation: 0.0,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ).animateOnPageLoad(
                        animationsMap['buttonOnPageLoadAnimation']!),
                  );
                },
              ).animateOnPageLoad(
                  animationsMap['listViewOnPageLoadAnimation']!);
            },
          ),
        ),
      ),
    );
  }
}
