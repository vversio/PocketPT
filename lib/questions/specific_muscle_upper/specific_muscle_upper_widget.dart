import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'specific_muscle_upper_model.dart';
export 'specific_muscle_upper_model.dart';

class SpecificMuscleUpperWidget extends StatefulWidget {
  const SpecificMuscleUpperWidget({super.key});

  @override
  State<SpecificMuscleUpperWidget> createState() =>
      _SpecificMuscleUpperWidgetState();
}

class _SpecificMuscleUpperWidgetState extends State<SpecificMuscleUpperWidget> {
  late SpecificMuscleUpperModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SpecificMuscleUpperModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: const Color(0xFF020612),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: Container(
                  width: 364.0,
                  height: 760.0,
                  decoration: BoxDecoration(
                    color: const Color(0xFF020612),
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Align(
                              alignment: const AlignmentDirectional(0.0, 0.0),
                              child: Text(
                                'Select a Specific Muscle',
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Poppins',
                                      fontSize: 24.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            0.0, 16.0, 0.0, 16.0),
                        child: Container(
                          width: 348.0,
                          height: 562.0,
                          decoration: BoxDecoration(
                            boxShadow: const [
                              BoxShadow(
                                blurRadius: 4.0,
                                color: Color(0x33000000),
                                offset: Offset(
                                  0.0,
                                  2.0,
                                ),
                              )
                            ],
                            gradient: LinearGradient(
                              colors: [
                                FlutterFlowTheme.of(context).alternate,
                                FlutterFlowTheme.of(context).primary
                              ],
                              stops: const [0.0, 1.0],
                              begin: const AlignmentDirectional(0.0, -1.0),
                              end: const AlignmentDirectional(0, 1.0),
                            ),
                            borderRadius: BorderRadius.circular(16.0),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 16.0, 0.0, 16.0),
                                child: Container(
                                  width: 272.0,
                                  height: 64.0,
                                  decoration: BoxDecoration(
                                    color: const Color(0xFF38097A),
                                    boxShadow: const [
                                      BoxShadow(
                                        blurRadius: 4.0,
                                        color: Color(0x33000000),
                                        offset: Offset(
                                          0.0,
                                          2.0,
                                        ),
                                      )
                                    ],
                                    borderRadius: BorderRadius.circular(16.0),
                                  ),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      var userdataRecordReference =
                                          UserdataRecord.createDoc(
                                              currentUserReference!);
                                      await userdataRecordReference
                                          .set(createUserdataRecordData(
                                        specificMuscle: 'Triceps',
                                      ));
                                      _model.triceps =
                                          UserdataRecord.getDocumentFromData(
                                              createUserdataRecordData(
                                                specificMuscle: 'Triceps',
                                              ),
                                              userdataRecordReference);

                                      context.pushNamed('PainLevel');

                                      safeSetState(() {});
                                    },
                                    text: 'Triceps',
                                    options: FFButtonOptions(
                                      height: 0.0,
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          16.0, 0.0, 16.0, 0.0),
                                      iconPadding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color: const Color(0xFF38097A),
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily: 'Inter',
                                            letterSpacing: 0.0,
                                          ),
                                      elevation: 0.0,
                                      borderRadius: BorderRadius.circular(16.0),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 16.0, 0.0, 16.0),
                                child: Container(
                                  width: 272.0,
                                  height: 64.0,
                                  decoration: BoxDecoration(
                                    color: const Color(0xFF38097A),
                                    boxShadow: const [
                                      BoxShadow(
                                        blurRadius: 4.0,
                                        color: Color(0x33000000),
                                        offset: Offset(
                                          0.0,
                                          2.0,
                                        ),
                                      )
                                    ],
                                    borderRadius: BorderRadius.circular(16.0),
                                  ),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      var userdataRecordReference =
                                          UserdataRecord.createDoc(
                                              currentUserReference!);
                                      await userdataRecordReference
                                          .set(createUserdataRecordData(
                                        specificMuscle: 'Biceps',
                                      ));
                                      _model.biceps =
                                          UserdataRecord.getDocumentFromData(
                                              createUserdataRecordData(
                                                specificMuscle: 'Biceps',
                                              ),
                                              userdataRecordReference);

                                      context.pushNamed('PainLevel');

                                      safeSetState(() {});
                                    },
                                    text: 'Biceps',
                                    options: FFButtonOptions(
                                      height: 0.0,
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          16.0, 0.0, 16.0, 0.0),
                                      iconPadding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color: const Color(0xFF38097A),
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily: 'Inter',
                                            letterSpacing: 0.0,
                                          ),
                                      elevation: 0.0,
                                      borderRadius: BorderRadius.circular(16.0),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 16.0, 0.0, 16.0),
                                child: Container(
                                  width: 272.0,
                                  height: 64.0,
                                  decoration: BoxDecoration(
                                    color: const Color(0xFF38097A),
                                    boxShadow: const [
                                      BoxShadow(
                                        blurRadius: 4.0,
                                        color: Color(0x33000000),
                                        offset: Offset(
                                          0.0,
                                          2.0,
                                        ),
                                      )
                                    ],
                                    borderRadius: BorderRadius.circular(16.0),
                                  ),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      var userdataRecordReference =
                                          UserdataRecord.createDoc(
                                              currentUserReference!);
                                      await userdataRecordReference
                                          .set(createUserdataRecordData(
                                        specificMuscle: 'Deltoids',
                                      ));
                                      _model.deltoids =
                                          UserdataRecord.getDocumentFromData(
                                              createUserdataRecordData(
                                                specificMuscle: 'Deltoids',
                                              ),
                                              userdataRecordReference);

                                      context.pushNamed('PainLevel');

                                      safeSetState(() {});
                                    },
                                    text: 'Deltoids',
                                    options: FFButtonOptions(
                                      height: 36.0,
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          16.0, 0.0, 16.0, 0.0),
                                      iconPadding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color: const Color(0xFF38097A),
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily: 'Inter',
                                            color: Colors.white,
                                            letterSpacing: 0.0,
                                          ),
                                      elevation: 0.0,
                                      borderRadius: BorderRadius.circular(16.0),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 16.0, 0.0, 16.0),
                                child: Container(
                                  width: 272.0,
                                  height: 64.0,
                                  decoration: BoxDecoration(
                                    color: const Color(0xFF38097A),
                                    boxShadow: const [
                                      BoxShadow(
                                        blurRadius: 4.0,
                                        color: Color(0x33000000),
                                        offset: Offset(
                                          0.0,
                                          2.0,
                                        ),
                                      )
                                    ],
                                    borderRadius: BorderRadius.circular(16.0),
                                  ),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      var userdataRecordReference =
                                          UserdataRecord.createDoc(
                                              currentUserReference!);
                                      await userdataRecordReference
                                          .set(createUserdataRecordData(
                                        specificMuscle: 'Chest',
                                      ));
                                      _model.chest =
                                          UserdataRecord.getDocumentFromData(
                                              createUserdataRecordData(
                                                specificMuscle: 'Chest',
                                              ),
                                              userdataRecordReference);

                                      context.pushNamed('PainLevel');

                                      safeSetState(() {});
                                    },
                                    text: 'Chest',
                                    options: FFButtonOptions(
                                      height: 40.0,
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          16.0, 0.0, 16.0, 0.0),
                                      iconPadding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color: const Color(0xFF38097A),
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily: 'Inter',
                                            color: Colors.white,
                                            letterSpacing: 0.0,
                                          ),
                                      elevation: 0.0,
                                      borderRadius: BorderRadius.circular(16.0),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 16.0, 0.0, 16.0),
                                child: Container(
                                  width: 272.0,
                                  height: 64.0,
                                  decoration: BoxDecoration(
                                    color: const Color(0xFF38097A),
                                    boxShadow: const [
                                      BoxShadow(
                                        blurRadius: 4.0,
                                        color: Color(0x33000000),
                                        offset: Offset(
                                          0.0,
                                          2.0,
                                        ),
                                      )
                                    ],
                                    borderRadius: BorderRadius.circular(16.0),
                                  ),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      var userdataRecordReference =
                                          UserdataRecord.createDoc(
                                              currentUserReference!);
                                      await userdataRecordReference
                                          .set(createUserdataRecordData(
                                        specificMuscle: 'Neck',
                                      ));
                                      _model.neck =
                                          UserdataRecord.getDocumentFromData(
                                              createUserdataRecordData(
                                                specificMuscle: 'Neck',
                                              ),
                                              userdataRecordReference);

                                      context.pushNamed('PainLevel');

                                      safeSetState(() {});
                                    },
                                    text: 'Neck',
                                    options: FFButtonOptions(
                                      height: 58.0,
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          16.0, 0.0, 16.0, 0.0),
                                      iconPadding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color: const Color(0xFF38097A),
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily: 'Inter',
                                            letterSpacing: 0.0,
                                          ),
                                      elevation: 0.0,
                                      borderRadius: BorderRadius.circular(16.0),
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
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
