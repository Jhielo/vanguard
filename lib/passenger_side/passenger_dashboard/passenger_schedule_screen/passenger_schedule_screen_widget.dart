import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'passenger_schedule_screen_model.dart';
export 'passenger_schedule_screen_model.dart';

class PassengerScheduleScreenWidget extends StatefulWidget {
  const PassengerScheduleScreenWidget({super.key});

  static String routeName = 'PassengerScheduleScreen';
  static String routePath = '/passengerScheduleScreen';

  @override
  State<PassengerScheduleScreenWidget> createState() =>
      _PassengerScheduleScreenWidgetState();
}

class _PassengerScheduleScreenWidgetState
    extends State<PassengerScheduleScreenWidget> {
  late PassengerScheduleScreenModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PassengerScheduleScreenModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      FFAppState().preferredTravelDate = getCurrentTimestamp;
      safeSetState(() {});
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
        backgroundColor: Color(0xFF0D1117),
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
              FFAppState().route = '';
              FFAppState().isRouteChosen = false;
              FFAppState().predictedArrival = '';
              FFAppState().predictedDeparture = '';
              safeSetState(() {});
              context.pop();
            },
          ),
          title: Text(
            'Schedules',
            style: FlutterFlowTheme.of(context).titleLarge.override(
                  font: FlutterFlowTheme.of(context).titleLarge,
                  color: Colors.white,
                  fontSize: 28.0,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.w600,
                ),
          ),
          actions: [],
          centerTitle: true,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16.0, 24.0, 16.0, 24.0),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Preferred Route',
                          style: FlutterFlowTheme.of(context)
                              .titleMedium
                              .override(
                                font: FlutterFlowTheme.of(context).titleMedium,
                                color: Colors.white,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.normal,
                              ),
                        ),
                      ],
                    ),
                    FlutterFlowDropDown<String>(
                      controller: _model.dropDownValueController ??=
                          FormFieldController<String>(null),
                      options: ['Sorsogon - Legazpi', 'Legazpi - Sorsogon\n'],
                      onChanged: (val) async {
                        safeSetState(() => _model.dropDownValue = val);
                        FFAppState().route = 'sorsogon-legazpi';
                        FFAppState().isRouteChosen = true;
                        safeSetState(() {});
                      },
                      width: double.infinity,
                      height: 52.0,
                      searchHintTextStyle:
                          FlutterFlowTheme.of(context).labelMedium.override(
                                font: FlutterFlowTheme.of(context).labelMedium,
                                letterSpacing: 0.0,
                              ),
                      searchTextStyle:
                          FlutterFlowTheme.of(context).bodyMedium.override(
                                font: FlutterFlowTheme.of(context).bodyMedium,
                                color: FlutterFlowTheme.of(context).primary,
                                letterSpacing: 0.0,
                              ),
                      textStyle:
                          FlutterFlowTheme.of(context).bodyLarge.override(
                                font: FlutterFlowTheme.of(context).bodyLarge,
                                letterSpacing: 0.0,
                              ),
                      hintText: 'Select one...',
                      searchHintText: 'Search for an item...',
                      searchCursorColor: FlutterFlowTheme.of(context).primary,
                      icon: Icon(
                        Icons.keyboard_arrow_down_rounded,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 24.0,
                      ),
                      fillColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
                      elevation: 2.0,
                      borderColor: FlutterFlowTheme.of(context).alternate,
                      borderWidth: 2.0,
                      borderRadius: 12.0,
                      margin:
                          EdgeInsetsDirectional.fromSTEB(12.0, 4.0, 8.0, 4.0),
                      hidesUnderline: true,
                      isOverButton: true,
                      isSearchable: true,
                      isMultiSelect: false,
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Preferred Travel Date and Time',
                          style: FlutterFlowTheme.of(context)
                              .titleMedium
                              .override(
                                font: FlutterFlowTheme.of(context).titleMedium,
                                color: Colors.white,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.normal,
                              ),
                        ),
                        Text(
                          'Pick a preferred date/time for your travel (Optional)',
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                font: FlutterFlowTheme.of(context).bodyMedium,
                                color: Color(0xFFB0B0B0),
                                letterSpacing: 0.0,
                              ),
                        ),
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            await showModalBottomSheet<bool>(
                                context: context,
                                builder: (context) {
                                  final _datePickedCupertinoTheme =
                                      CupertinoTheme.of(context);
                                  return Container(
                                    height:
                                        MediaQuery.of(context).size.height / 3,
                                    width: MediaQuery.of(context).size.width,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    child: CupertinoTheme(
                                      data: _datePickedCupertinoTheme.copyWith(
                                        textTheme: _datePickedCupertinoTheme
                                            .textTheme
                                            .copyWith(
                                          dateTimePickerTextStyle:
                                              FlutterFlowTheme.of(context)
                                                  .headlineMedium
                                                  .override(
                                                    font: FlutterFlowTheme.of(
                                                            context)
                                                        .headlineMedium,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                    letterSpacing: 0.0,
                                                  ),
                                        ),
                                      ),
                                      child: CupertinoDatePicker(
                                        mode:
                                            CupertinoDatePickerMode.dateAndTime,
                                        minimumDate: (getCurrentTimestamp ??
                                            DateTime(1900)),
                                        initialDateTime:
                                            (FFAppState().preferredTravelDate ??
                                                DateTime.now()),
                                        maximumDate: DateTime(2050),
                                        backgroundColor:
                                            FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                        use24hFormat: false,
                                        onDateTimeChanged: (newDateTime) =>
                                            safeSetState(() {
                                          _model.datePicked = newDateTime;
                                        }),
                                      ),
                                    ),
                                  );
                                });
                            FFAppState().preferredTravelDate =
                                _model.datePicked;
                            safeSetState(() {});
                          },
                          child: Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              borderRadius: BorderRadius.circular(8.0),
                              border: Border.all(
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                                width: 1.0,
                              ),
                            ),
                            child: Align(
                              alignment: AlignmentDirectional(-1.0, 0.0),
                              child: Padding(
                                padding: EdgeInsets.all(16.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Align(
                                      alignment:
                                          AlignmentDirectional(-1.0, 0.0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            12.0, 0.0, 12.0, 0.0),
                                        child: Icon(
                                          Icons.calendar_today,
                                          color: Colors.black,
                                          size: 24.0,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      '${dateTimeFormat(
                                        "yMMMd",
                                        FFAppState().preferredTravelDate,
                                        locale: FFLocalizations.of(context)
                                            .languageCode,
                                      )} - ${dateTimeFormat(
                                        "jm",
                                        FFAppState().preferredTravelDate,
                                        locale: FFLocalizations.of(context)
                                            .languageCode,
                                      )}',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            font: FlutterFlowTheme.of(context)
                                                .bodyMedium,
                                            color: Colors.white,
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ].divide(SizedBox(height: 12.0)),
                    ),
                    Container(
                      width: double.infinity,
                      height: 1.0,
                      decoration: BoxDecoration(
                        color: Color(0xFF2D3748),
                      ),
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Predicted Result',
                          style: FlutterFlowTheme.of(context)
                              .titleMedium
                              .override(
                                font: FlutterFlowTheme.of(context).titleMedium,
                                color: Colors.white,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w500,
                              ),
                        ),
                        Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            borderRadius: BorderRadius.circular(8.0),
                            border: Border.all(
                              color: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              width: 1.0,
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(12.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Estimated Time of Arrival',
                                      style: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            font: FlutterFlowTheme.of(context)
                                                .labelMedium,
                                            color: Color(0xFFB0B0B0),
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                    Text(
                                      FFAppState().predictedArrival,
                                      textAlign: TextAlign.start,
                                      style: FlutterFlowTheme.of(context)
                                          .headlineSmall
                                          .override(
                                            font: FlutterFlowTheme.of(context)
                                                .headlineSmall,
                                            color: Colors.white,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w600,
                                          ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            borderRadius: BorderRadius.circular(8.0),
                            border: Border.all(
                              color: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              width: 1.0,
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(12.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Estimated Time of Departure',
                                      style: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            font: FlutterFlowTheme.of(context)
                                                .labelMedium,
                                            color: Color(0xFFB0B0B0),
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                    Text(
                                      FFAppState().predictedDeparture,
                                      style: FlutterFlowTheme.of(context)
                                          .headlineSmall
                                          .override(
                                            font: FlutterFlowTheme.of(context)
                                                .headlineSmall,
                                            color: Colors.white,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w600,
                                          ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ].divide(SizedBox(height: 16.0)),
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        FFButtonWidget(
                          onPressed: () async {
                            var _shouldSetState = false;
                            if (FFAppState().isRouteChosen) {
                              _model.apiResult1ts = await PredictVansCall.call(
                                event: functions.getData(false,
                                    FFAppState().preferredTravelDate!, false),
                                weekday: functions.getData(false,
                                    FFAppState().preferredTravelDate!, true),
                                preferredDepTime: functions.getTime(
                                    FFAppState().preferredTravelDate!, false),
                                route:
                                    FFAppState().route == 'Sorsogon - Legazpi'
                                        ? 'sorsogon-legazpi'
                                        : 'legazpi-sorsogon',
                                hour: functions
                                    .getData(
                                        true,
                                        FFAppState().preferredTravelDate!,
                                        false)
                                    .toString(),
                              );

                              _shouldSetState = true;
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(
                                    'Route Not Yet Chosen',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                  duration: Duration(milliseconds: 4000),
                                  backgroundColor:
                                      FlutterFlowTheme.of(context).primary,
                                ),
                              );
                              if (_shouldSetState) safeSetState(() {});
                              return;
                            }

                            if ((_model.apiResult1ts?.succeeded ?? true)) {
                              FFAppState().predictedDeparture =
                                  PredictVansCall.departure(
                                (_model.apiResult1ts?.jsonBody ?? ''),
                              )!;
                              FFAppState().predictedArrival =
                                  PredictVansCall.arrival(
                                (_model.apiResult1ts?.jsonBody ?? ''),
                              )!;
                              safeSetState(() {});
                            } else {
                              if (_shouldSetState) safeSetState(() {});
                              return;
                            }

                            if (_shouldSetState) safeSetState(() {});
                          },
                          text: 'Predict Schedule',
                          options: FFButtonOptions(
                            width: double.infinity,
                            height: 50.0,
                            padding: EdgeInsets.all(8.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: FlutterFlowTheme.of(context).primary,
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  font: FlutterFlowTheme.of(context).titleSmall,
                                  color: Colors.white,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.normal,
                                ),
                            elevation: 0.0,
                            borderSide: BorderSide(
                              color: Color(0xFF2D3748),
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: FFButtonWidget(
                                onPressed: () {
                                  print('Button pressed ...');
                                },
                                text: 'Add Schedule',
                                options: FFButtonOptions(
                                  height: 50.0,
                                  padding: EdgeInsets.all(8.0),
                                  iconPadding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: FlutterFlowTheme.of(context).accent1,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        font: FlutterFlowTheme.of(context)
                                            .titleSmall,
                                        color: Colors.white,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.normal,
                                      ),
                                  elevation: 0.0,
                                  borderSide: BorderSide(
                                    color: Color(0xFF2D3748),
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                              ),
                            ),
                            Expanded(
                              child: FFButtonWidget(
                                onPressed: () async {
                                  safeSetState(() {
                                    _model.dropDownValueController?.reset();
                                  });
                                  FFAppState().predictedDeparture = '';
                                  FFAppState().preferredTravelDate =
                                      getCurrentTimestamp;
                                  FFAppState().predictedArrival = '';
                                  FFAppState().route = '';
                                  FFAppState().isRouteChosen = false;
                                  safeSetState(() {});
                                },
                                text: 'Reset Data',
                                options: FFButtonOptions(
                                  height: 50.0,
                                  padding: EdgeInsets.all(8.0),
                                  iconPadding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: FlutterFlowTheme.of(context).tertiary,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        font: FlutterFlowTheme.of(context)
                                            .titleSmall,
                                        color: Colors.white,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.normal,
                                      ),
                                  elevation: 0.0,
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                              ),
                            ),
                          ].divide(SizedBox(width: 16.0)),
                        ),
                      ].divide(SizedBox(height: 16.0)),
                    ),
                  ].divide(SizedBox(height: 24.0)),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
