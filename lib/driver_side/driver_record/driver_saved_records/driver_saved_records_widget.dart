import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:flutter/material.dart';
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

class _DriverSavedRecordsWidgetState extends State<DriverSavedRecordsWidget> {
  late DriverSavedRecordsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DriverSavedRecordsModel());
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
          backgroundColor: Color(0xFF183072),
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: Colors.white,
              size: 30.0,
            ),
            onPressed: () async {
              context.pushNamed(DriverDashboardWidget.routeName);
            },
          ),
          title: Text(
            'Saved Recordings',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Google',
                  color: Colors.white,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.bold,
                ),
          ),
          actions: [],
          centerTitle: true,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: FutureBuilder<List<VansDatasetRow>>(
            future: VansDatasetTable().queryRows(
              queryFn: (q) => q.eqOrNull(
                'plateNum',
                FFAppState().userPlateNum,
              ),
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
                        height: 120.0,
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: FlutterFlowTheme.of(context).primary,
                        textStyle:
                            FlutterFlowTheme.of(context).titleSmall.override(
                                  fontFamily: 'Google',
                                  color: Colors.white,
                                  fontSize: 24.0,
                                  letterSpacing: 0.0,
                                ),
                        elevation: 0.0,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
