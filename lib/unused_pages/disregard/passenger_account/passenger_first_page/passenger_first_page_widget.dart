import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/random_data_util.dart' as random_data;
import '/index.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'passenger_first_page_model.dart';
export 'passenger_first_page_model.dart';

class PassengerFirstPageWidget extends StatefulWidget {
  const PassengerFirstPageWidget({super.key});

  static String routeName = 'PassengerFirstPage';
  static String routePath = '/passengerFirstPage';

  @override
  State<PassengerFirstPageWidget> createState() =>
      _PassengerFirstPageWidgetState();
}

class _PassengerFirstPageWidgetState extends State<PassengerFirstPageWidget>
    with TickerProviderStateMixin {
  late PassengerFirstPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PassengerFirstPageModel());

    _model.tabBarController = TabController(
      vsync: this,
      length: 2,
      initialIndex: 0,
    )..addListener(() => safeSetState(() {}));

    _model.passengerEmailAddressTextController1 ??= TextEditingController();
    _model.passengerEmailAddressFocusNode1 ??= FocusNode();

    _model.passengerPasswordTextController1 ??= TextEditingController();
    _model.passengerPasswordFocusNode1 ??= FocusNode();

    _model.passengerNameTextController ??= TextEditingController();
    _model.passengerNameFocusNode ??= FocusNode();

    _model.passengerEmailAddressTextController2 ??= TextEditingController();
    _model.passengerEmailAddressFocusNode2 ??= FocusNode();

    _model.passengerPasswordTextController2 ??= TextEditingController();
    _model.passengerPasswordFocusNode2 ??= FocusNode();

    _model.confirmPasswordTextController ??= TextEditingController();
    _model.confirmPasswordFocusNode ??= FocusNode();
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
          title: Text(
            'VanGuard',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Google',
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
          child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(),
            child: Padding(
              padding: EdgeInsets.all(24.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Passenger Information',
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context)
                            .headlineLarge
                            .override(
                              font: FlutterFlowTheme.of(context).headlineLarge,
                              color: Colors.white,
                              fontSize: 28.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ].divide(SizedBox(height: 8.0)),
                  ),
                  Text(
                    'Are you entering a new or an existing account?',
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).bodyLarge.override(
                          font: FlutterFlowTheme.of(context).bodyLarge,
                          color: Color(0xFF9E9E9E),
                          fontSize: 14.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment(0.0, 0),
                          child: TabBar(
                            labelColor:
                                FlutterFlowTheme.of(context).primaryText,
                            unselectedLabelColor:
                                FlutterFlowTheme.of(context).secondaryText,
                            labelStyle: FlutterFlowTheme.of(context)
                                .titleMedium
                                .override(
                                  font:
                                      FlutterFlowTheme.of(context).titleMedium,
                                  letterSpacing: 0.0,
                                ),
                            unselectedLabelStyle: FlutterFlowTheme.of(context)
                                .titleMedium
                                .override(
                                  font:
                                      FlutterFlowTheme.of(context).titleMedium,
                                  letterSpacing: 0.0,
                                ),
                            indicatorColor:
                                FlutterFlowTheme.of(context).primary,
                            tabs: [
                              Tab(
                                text: 'Sign in',
                              ),
                              Tab(
                                text: 'Sign Up',
                              ),
                            ],
                            controller: _model.tabBarController,
                            onTap: (i) async {
                              [() async {}, () async {}][i]();
                            },
                          ),
                        ),
                        Expanded(
                          child: TabBarView(
                            controller: _model.tabBarController,
                            children: [
                              ListView(
                                padding: EdgeInsets.zero,
                                shrinkWrap: true,
                                scrollDirection: Axis.vertical,
                                children: [
                                  Align(
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: Padding(
                                      padding: EdgeInsets.all(32.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Align(
                                            alignment:
                                                AlignmentDirectional(0.0, 0.0),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 0.0, 16.0),
                                              child: Container(
                                                width: 300.0,
                                                child: TextFormField(
                                                  controller: _model
                                                      .passengerEmailAddressTextController1,
                                                  focusNode: _model
                                                      .passengerEmailAddressFocusNode1,
                                                  autofocus: true,
                                                  autofillHints: [
                                                    AutofillHints.name
                                                  ],
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    labelText: 'Email Address',
                                                    labelStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily: 'Google',
                                                          letterSpacing: 0.0,
                                                        ),
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .primaryBackground,
                                                        width: 2.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        width: 2.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                    errorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                        width: 2.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                    focusedErrorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                        width: 2.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                    filled: true,
                                                    fillColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primaryBackground,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Google',
                                                        letterSpacing: 0.0,
                                                      ),
                                                  keyboardType: TextInputType
                                                      .emailAddress,
                                                  validator: _model
                                                      .passengerEmailAddressTextController1Validator
                                                      .asValidator(context),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment:
                                                AlignmentDirectional(0.0, 0.0),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 0.0, 16.0),
                                              child: Container(
                                                width: 300.0,
                                                child: TextFormField(
                                                  controller: _model
                                                      .passengerPasswordTextController1,
                                                  focusNode: _model
                                                      .passengerPasswordFocusNode1,
                                                  autofocus: true,
                                                  autofillHints: [
                                                    AutofillHints.name
                                                  ],
                                                  obscureText: !_model
                                                      .passengerPasswordVisibility1,
                                                  decoration: InputDecoration(
                                                    labelText: 'Password',
                                                    labelStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .labelMedium
                                                        .override(
                                                          font: FlutterFlowTheme
                                                                  .of(context)
                                                              .labelMedium,
                                                          letterSpacing: 0.0,
                                                        ),
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .primaryBackground,
                                                        width: 2.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        width: 2.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                    errorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                        width: 2.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                    focusedErrorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                        width: 2.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                    filled: true,
                                                    fillColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primaryBackground,
                                                    suffixIcon: InkWell(
                                                      onTap: () => safeSetState(
                                                        () => _model
                                                                .passengerPasswordVisibility1 =
                                                            !_model
                                                                .passengerPasswordVisibility1,
                                                      ),
                                                      focusNode: FocusNode(
                                                          skipTraversal: true),
                                                      child: Icon(
                                                        _model.passengerPasswordVisibility1
                                                            ? Icons
                                                                .visibility_outlined
                                                            : Icons
                                                                .visibility_off_outlined,
                                                        color:
                                                            Color(0xFF757575),
                                                        size: 22.0,
                                                      ),
                                                    ),
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        font:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium,
                                                        letterSpacing: 0.0,
                                                      ),
                                                  keyboardType: TextInputType
                                                      .emailAddress,
                                                  validator: _model
                                                      .passengerPasswordTextController1Validator
                                                      .asValidator(context),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Divider(
                                            thickness: 2.0,
                                            color: Color(0xFF14181B),
                                          ),
                                          Align(
                                            alignment:
                                                AlignmentDirectional(0.0, 0.0),
                                            child: FFButtonWidget(
                                              onPressed: () async {
                                                _model.passengerMatch =
                                                    await UsersTable()
                                                        .queryRows(
                                                  queryFn: (q) => q
                                                      .eqOrNull(
                                                        'email',
                                                        _model
                                                            .passengerEmailAddressTextController1
                                                            .text,
                                                      )
                                                      .eqOrNull(
                                                        'password',
                                                        _model
                                                            .passengerPasswordTextController1
                                                            .text,
                                                      ),
                                                );
                                                if (_model.passengerMatch !=
                                                        null &&
                                                    (_model.passengerMatch)!
                                                        .isNotEmpty) {
                                                  context.pushNamed(
                                                      PassengerDashboardWidget
                                                          .routeName);
                                                } else {
                                                  ScaffoldMessenger.of(context)
                                                      .showSnackBar(
                                                    SnackBar(
                                                      content: Text(
                                                        'Invalid Email or Password',
                                                        style: TextStyle(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                        ),
                                                      ),
                                                      duration: Duration(
                                                          milliseconds: 4000),
                                                      backgroundColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondary,
                                                    ),
                                                  );
                                                }

                                                safeSetState(() {});
                                              },
                                              text: 'Log in',
                                              options: FFButtonOptions(
                                                width: 240.0,
                                                height: 44.0,
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 0.0, 0.0),
                                                iconPadding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(
                                                            0.0, 0.0, 0.0, 0.0),
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily: 'Google',
                                                          color: Colors.white,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                                elevation: 3.0,
                                                borderSide: BorderSide(
                                                  color: Colors.transparent,
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment:
                                                AlignmentDirectional(0.0, 0.0),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 40.0, 0.0, 0.0),
                                              child: Text(
                                                'Forgotten Password?',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily: 'Google',
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              ListView(
                                padding: EdgeInsets.zero,
                                shrinkWrap: true,
                                scrollDirection: Axis.vertical,
                                children: [
                                  Align(
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: Padding(
                                      padding: EdgeInsets.all(32.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Align(
                                            alignment:
                                                AlignmentDirectional(0.0, 0.0),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 0.0, 16.0),
                                              child: Container(
                                                width: 300.0,
                                                child: TextFormField(
                                                  controller: _model
                                                      .passengerNameTextController,
                                                  focusNode: _model
                                                      .passengerNameFocusNode,
                                                  onChanged: (_) =>
                                                      EasyDebounce.debounce(
                                                    '_model.passengerNameTextController',
                                                    Duration(
                                                        milliseconds: 2000),
                                                    () async {
                                                      safeSetState(() {
                                                        _model.passengerNameTextController
                                                                ?.text =
                                                            _model
                                                                .passengerNameTextController
                                                                .text;
                                                      });
                                                    },
                                                  ),
                                                  autofocus: true,
                                                  autofillHints: [
                                                    AutofillHints.name
                                                  ],
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    labelText: 'Username',
                                                    labelStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily: 'Google',
                                                          letterSpacing: 0.0,
                                                        ),
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .primaryBackground,
                                                        width: 2.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        width: 2.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                    errorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                        width: 2.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                    focusedErrorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                        width: 2.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                    filled: true,
                                                    fillColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primaryBackground,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Google',
                                                        letterSpacing: 0.0,
                                                      ),
                                                  keyboardType: TextInputType
                                                      .emailAddress,
                                                  validator: _model
                                                      .passengerNameTextControllerValidator
                                                      .asValidator(context),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment:
                                                AlignmentDirectional(0.0, 0.0),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 0.0, 16.0),
                                              child: Container(
                                                width: 300.0,
                                                child: TextFormField(
                                                  controller: _model
                                                      .passengerEmailAddressTextController2,
                                                  focusNode: _model
                                                      .passengerEmailAddressFocusNode2,
                                                  onChanged: (_) =>
                                                      EasyDebounce.debounce(
                                                    '_model.passengerEmailAddressTextController2',
                                                    Duration(
                                                        milliseconds: 2000),
                                                    () async {
                                                      safeSetState(() {
                                                        _model.passengerEmailAddressTextController2
                                                                ?.text =
                                                            _model
                                                                .passengerEmailAddressTextController2
                                                                .text;
                                                      });
                                                    },
                                                  ),
                                                  autofocus: true,
                                                  autofillHints: [
                                                    AutofillHints
                                                        .telephoneNumber
                                                  ],
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    labelText: 'EmailAddress',
                                                    labelStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily: 'Google',
                                                          letterSpacing: 0.0,
                                                        ),
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .primaryBackground,
                                                        width: 2.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        width: 2.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                    errorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                        width: 2.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                    focusedErrorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                        width: 2.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                    filled: true,
                                                    fillColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primaryBackground,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Google',
                                                        letterSpacing: 0.0,
                                                      ),
                                                  keyboardType: TextInputType
                                                      .emailAddress,
                                                  validator: _model
                                                      .passengerEmailAddressTextController2Validator
                                                      .asValidator(context),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment:
                                                AlignmentDirectional(0.0, 0.0),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 0.0, 16.0),
                                              child: Container(
                                                width: 300.0,
                                                child: TextFormField(
                                                  controller: _model
                                                      .passengerPasswordTextController2,
                                                  focusNode: _model
                                                      .passengerPasswordFocusNode2,
                                                  onChanged: (_) =>
                                                      EasyDebounce.debounce(
                                                    '_model.passengerPasswordTextController2',
                                                    Duration(
                                                        milliseconds: 2000),
                                                    () async {
                                                      safeSetState(() {
                                                        _model.passengerPasswordTextController2
                                                                ?.text =
                                                            _model
                                                                .passengerPasswordTextController2
                                                                .text;
                                                      });
                                                    },
                                                  ),
                                                  autofocus: true,
                                                  autofillHints: [
                                                    AutofillHints.name
                                                  ],
                                                  obscureText: !_model
                                                      .passengerPasswordVisibility2,
                                                  decoration: InputDecoration(
                                                    labelText:
                                                        'Create Password',
                                                    labelStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily: 'Google',
                                                          letterSpacing: 0.0,
                                                        ),
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .primaryBackground,
                                                        width: 2.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        width: 2.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                    errorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                        width: 2.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                    focusedErrorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                        width: 2.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                    filled: true,
                                                    fillColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primaryBackground,
                                                    suffixIcon: InkWell(
                                                      onTap: () => safeSetState(
                                                        () => _model
                                                                .passengerPasswordVisibility2 =
                                                            !_model
                                                                .passengerPasswordVisibility2,
                                                      ),
                                                      focusNode: FocusNode(
                                                          skipTraversal: true),
                                                      child: Icon(
                                                        _model.passengerPasswordVisibility2
                                                            ? Icons
                                                                .visibility_outlined
                                                            : Icons
                                                                .visibility_off_outlined,
                                                        color:
                                                            Color(0xFF757575),
                                                        size: 22.0,
                                                      ),
                                                    ),
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Google',
                                                        letterSpacing: 0.0,
                                                      ),
                                                  keyboardType: TextInputType
                                                      .emailAddress,
                                                  validator: _model
                                                      .passengerPasswordTextController2Validator
                                                      .asValidator(context),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment:
                                                AlignmentDirectional(0.0, 0.0),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 0.0, 16.0),
                                              child: Container(
                                                width: 300.0,
                                                child: TextFormField(
                                                  controller: _model
                                                      .confirmPasswordTextController,
                                                  focusNode: _model
                                                      .confirmPasswordFocusNode,
                                                  onChanged: (_) =>
                                                      EasyDebounce.debounce(
                                                    '_model.confirmPasswordTextController',
                                                    Duration(
                                                        milliseconds: 2000),
                                                    () async {
                                                      safeSetState(() {
                                                        _model.confirmPasswordTextController
                                                                ?.text =
                                                            _model
                                                                .confirmPasswordTextController
                                                                .text;
                                                      });
                                                    },
                                                  ),
                                                  autofocus: true,
                                                  autofillHints: [
                                                    AutofillHints.name
                                                  ],
                                                  obscureText: !_model
                                                      .confirmPasswordVisibility,
                                                  decoration: InputDecoration(
                                                    labelText:
                                                        'Confirm Password',
                                                    labelStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily: 'Google',
                                                          letterSpacing: 0.0,
                                                        ),
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .primaryBackground,
                                                        width: 2.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        width: 2.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                    errorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                        width: 2.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                    focusedErrorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                        width: 2.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                    filled: true,
                                                    fillColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primaryBackground,
                                                    suffixIcon: InkWell(
                                                      onTap: () => safeSetState(
                                                        () => _model
                                                                .confirmPasswordVisibility =
                                                            !_model
                                                                .confirmPasswordVisibility,
                                                      ),
                                                      focusNode: FocusNode(
                                                          skipTraversal: true),
                                                      child: Icon(
                                                        _model.confirmPasswordVisibility
                                                            ? Icons
                                                                .visibility_outlined
                                                            : Icons
                                                                .visibility_off_outlined,
                                                        color:
                                                            Color(0xFF757575),
                                                        size: 22.0,
                                                      ),
                                                    ),
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Google',
                                                        letterSpacing: 0.0,
                                                      ),
                                                  keyboardType: TextInputType
                                                      .emailAddress,
                                                  validator: _model
                                                      .confirmPasswordTextControllerValidator
                                                      .asValidator(context),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment:
                                                AlignmentDirectional(0.0, 0.0),
                                            child: FFButtonWidget(
                                              onPressed: () async {
                                                await UsersTable().insert({
                                                  'id': random_data
                                                      .randomInteger(0, 1000000)
                                                      .toString(),
                                                  'role': 'passenger',
                                                  'name': _model
                                                      .passengerNameTextController
                                                      .text,
                                                  'email': _model
                                                      .passengerEmailAddressTextController2
                                                      .text,
                                                  'password': _model
                                                      .passengerPasswordTextController2
                                                      .text,
                                                  'created_at':
                                                      supaSerialize<DateTime>(
                                                          getCurrentTimestamp),
                                                });
                                                ScaffoldMessenger.of(context)
                                                    .showSnackBar(
                                                  SnackBar(
                                                    content: Text(
                                                      'Account Created!',
                                                      style: TextStyle(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                      ),
                                                    ),
                                                    duration: Duration(
                                                        milliseconds: 4000),
                                                    backgroundColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .secondary,
                                                  ),
                                                );
                                              },
                                              text: 'Create Account',
                                              options: FFButtonOptions(
                                                width: 240.0,
                                                height: 44.0,
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 0.0, 0.0),
                                                iconPadding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(
                                                            0.0, 0.0, 0.0, 0.0),
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily: 'Google',
                                                          color: Colors.white,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                                elevation: 3.0,
                                                borderSide: BorderSide(
                                                  color: Colors.transparent,
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      FFButtonWidget(
                        onPressed: () async {
                          context.pushNamed(
                            HomePageWidget.routeName,
                            extra: <String, dynamic>{
                              kTransitionInfoKey: TransitionInfo(
                                hasTransition: true,
                                transitionType: PageTransitionType.leftToRight,
                              ),
                            },
                          );
                        },
                        text: 'Back to Main Page',
                        options: FFButtonOptions(
                          width: 240.0,
                          height: 40.0,
                          padding: EdgeInsets.all(8.0),
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: Color(0xFF1E3A8A),
                          textStyle: FlutterFlowTheme.of(context)
                              .titleMedium
                              .override(
                                font: FlutterFlowTheme.of(context).titleMedium,
                                color: Colors.white,
                                fontSize: 16.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.normal,
                              ),
                          elevation: 2.0,
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                    ].divide(SizedBox(height: 16.0)),
                  ),
                ].divide(SizedBox(height: 24.0)),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
