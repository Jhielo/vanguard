import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'passenger_announcement_prio_model.dart';
export 'passenger_announcement_prio_model.dart';

class PassengerAnnouncementPrioWidget extends StatefulWidget {
  const PassengerAnnouncementPrioWidget({super.key});

  static String routeName = 'PassengerAnnouncementPrio';
  static String routePath = '/passengerAnnouncementPrio';

  @override
  State<PassengerAnnouncementPrioWidget> createState() =>
      _PassengerAnnouncementPrioWidgetState();
}

class _PassengerAnnouncementPrioWidgetState
    extends State<PassengerAnnouncementPrioWidget> {
  late PassengerAnnouncementPrioModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PassengerAnnouncementPrioModel());
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
              context.pushNamed(PassengerAnnouncementWidget.routeName);
            },
          ),
          title: Text(
            'Announcements',
            style: FlutterFlowTheme.of(context).titleLarge.override(
                  font: FlutterFlowTheme.of(context).titleLarge,
                  color: FlutterFlowTheme.of(context).info,
                  fontSize: 28.0,
                  letterSpacing: 0.0,
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
              padding: EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 20.0, 20.0),
              child: FutureBuilder<List<NdrrmcAnnouncementsRow>>(
                future: NdrrmcAnnouncementsTable().queryRows(
                  queryFn: (q) => q.eqOrNull(
                    'priority',
                    true,
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
                  List<NdrrmcAnnouncementsRow>
                      listViewNdrrmcAnnouncementsRowList = snapshot.data!;

                  return ListView.separated(
                    padding: EdgeInsets.zero,
                    primary: false,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemCount: listViewNdrrmcAnnouncementsRowList.length,
                    separatorBuilder: (_, __) => SizedBox(height: 20.0),
                    itemBuilder: (context, listViewIndex) {
                      final listViewNdrrmcAnnouncementsRow =
                          listViewNdrrmcAnnouncementsRowList[listViewIndex];
                      return Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Container(
                          width: double.infinity,
                          height: 200.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: Image.network(
                                '800x800?urgent announcement',
                              ).image,
                            ),
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 4.0,
                                color: Color(0x33000000),
                                offset: Offset(
                                  0.0,
                                  2.0,
                                ),
                              )
                            ],
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          child: Align(
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: Container(
                              width: double.infinity,
                              height: double.infinity,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Colors.transparent,
                                    Color(0x80000000)
                                  ],
                                  stops: [0.0, 1.0],
                                  begin: AlignmentDirectional(0.0, -1.0),
                                  end: AlignmentDirectional(0, 1.0),
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              child: Stack(
                                alignment: AlignmentDirectional(0.0, 0.0),
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(8.0),
                                    child: Image.asset(
                                      'assets/images/VanGuard_Splash.png',
                                      width: 347.5,
                                      height: 200.0,
                                      fit: BoxFit.cover,
                                      alignment: Alignment(0.0, 0.0),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(16.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Align(
                                          alignment:
                                              AlignmentDirectional(0.0, 0.0),
                                          child: Text(
                                            valueOrDefault<String>(
                                              listViewNdrrmcAnnouncementsRow
                                                  .title,
                                              'Priority Announcements',
                                            ),
                                            textAlign: TextAlign.center,
                                            style: FlutterFlowTheme.of(context)
                                                .titleLarge
                                                .override(
                                                  font: FlutterFlowTheme.of(
                                                          context)
                                                      .titleLarge,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .info,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
