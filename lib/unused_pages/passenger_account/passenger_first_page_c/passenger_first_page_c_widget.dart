import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/unused_pages/disregard/passenger_components/passenger_logout_dialogue/passenger_logout_dialogue_widget.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'passenger_first_page_c_model.dart';
export 'passenger_first_page_c_model.dart';

class PassengerFirstPageCWidget extends StatefulWidget {
  const PassengerFirstPageCWidget({super.key});

  static String routeName = 'PassengerFirstPageC';
  static String routePath = '/passengerFirstPageC';

  @override
  State<PassengerFirstPageCWidget> createState() =>
      _PassengerFirstPageCWidgetState();
}

class _PassengerFirstPageCWidgetState extends State<PassengerFirstPageCWidget> {
  late PassengerFirstPageCModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PassengerFirstPageCModel());
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
        backgroundColor: Color(0xFF0D1117),
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
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Align(
                    alignment: AlignmentDirectional(0.0, -0.8),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(
                        'assets/images/Vanguardlogofinal.png',
                        width: 200.0,
                        height: 200.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Account Information',
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
                  Opacity(
                    opacity: 0.0,
                    child: Container(
                      width: 100.0,
                      height: 50.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                    ),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      FFButtonWidget(
                        onPressed: () async {
                          context.pushNamed(PassengerSignupWidget.routeName);
                        },
                        text: 'New Passenger',
                        options: FFButtonOptions(
                          width: 300.0,
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
                      FFButtonWidget(
                        onPressed: () async {
                          context.pushNamed(PassengerLoginWidget.routeName);
                        },
                        text: 'Existing Passenger',
                        options: FFButtonOptions(
                          width: 300.0,
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
                      Opacity(
                        opacity: 0.0,
                        child: Container(
                          width: 100.0,
                          height: 50.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                          ),
                        ),
                      ),
                      Builder(
                        builder: (context) => FFButtonWidget(
                          onPressed: () async {
                            await showDialog(
                              context: context,
                              builder: (dialogContext) {
                                return Dialog(
                                  elevation: 0,
                                  insetPadding: EdgeInsets.zero,
                                  backgroundColor: Colors.transparent,
                                  alignment: AlignmentDirectional(0.0, 0.0)
                                      .resolve(Directionality.of(context)),
                                  child: GestureDetector(
                                    onTap: () {
                                      FocusScope.of(dialogContext).unfocus();
                                      FocusManager.instance.primaryFocus
                                          ?.unfocus();
                                    },
                                    child: PassengerLogoutDialogueWidget(),
                                  ),
                                );
                              },
                            );
                          },
                          text: 'Back to Main Page',
                          options: FFButtonOptions(
                            width: 300.0,
                            height: 40.0,
                            padding: EdgeInsets.all(8.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: Color(0xFF1E3A8A),
                            textStyle: FlutterFlowTheme.of(context)
                                .titleMedium
                                .override(
                                  font:
                                      FlutterFlowTheme.of(context).titleMedium,
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
