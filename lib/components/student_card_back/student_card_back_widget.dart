import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'student_card_back_model.dart';
export 'student_card_back_model.dart';

class StudentCardBackWidget extends StatefulWidget {
  const StudentCardBackWidget({super.key});

  @override
  State<StudentCardBackWidget> createState() => _StudentCardBackWidgetState();
}

class _StudentCardBackWidgetState extends State<StudentCardBackWidget> {
  late StudentCardBackModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => StudentCardBackModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      width: 500.0,
      constraints: const BoxConstraints(
        maxWidth: 570.0,
      ),
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(
          color: FlutterFlowTheme.of(context).alternate,
          width: 1.0,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Details',
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).displaySmall,
                      ),
                    ].divide(const SizedBox(height: 4.0)),
                  ),
                ],
              ),
            ),
            Divider(
              height: 2.0,
              thickness: 1.0,
              color: FlutterFlowTheme.of(context).alternate,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: RichText(
                      textScaleFactor: MediaQuery.of(context).textScaleFactor,
                      text: TextSpan(
                        children: [
                          const TextSpan(
                            text: 'Student Name\n',
                            style: TextStyle(),
                          ),
                          TextSpan(
                            text: 'Saksham Srivastava',
                            style:
                                FlutterFlowTheme.of(context).bodyLarge.override(
                                      fontFamily: 'Plus Jakarta Sans',
                                      fontWeight: FontWeight.bold,
                                      lineHeight: 1.5,
                                    ),
                          )
                        ],
                        style: FlutterFlowTheme.of(context).labelMedium,
                      ),
                    ),
                  ),
                  Expanded(
                    child: RichText(
                      textScaleFactor: MediaQuery.of(context).textScaleFactor,
                      text: TextSpan(
                        children: [
                          const TextSpan(
                            text: 'Roll No.\n',
                            style: TextStyle(),
                          ),
                          TextSpan(
                            text: '2203630100136',
                            style:
                                FlutterFlowTheme.of(context).bodyLarge.override(
                                      fontFamily: 'Plus Jakarta Sans',
                                      fontWeight: FontWeight.bold,
                                      lineHeight: 1.5,
                                    ),
                          )
                        ],
                        style: FlutterFlowTheme.of(context).labelMedium,
                      ),
                    ),
                  ),
                ].divide(const SizedBox(width: 12.0)),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: RichText(
                      textScaleFactor: MediaQuery.of(context).textScaleFactor,
                      text: TextSpan(
                        children: [
                          const TextSpan(
                            text: 'Course\n',
                            style: TextStyle(),
                          ),
                          TextSpan(
                            text: 'B. Tech',
                            style:
                                FlutterFlowTheme.of(context).bodyLarge.override(
                                      fontFamily: 'Plus Jakarta Sans',
                                      fontWeight: FontWeight.bold,
                                      lineHeight: 1.5,
                                    ),
                          )
                        ],
                        style: FlutterFlowTheme.of(context).labelMedium,
                      ),
                    ),
                  ),
                  Expanded(
                    child: RichText(
                      textScaleFactor: MediaQuery.of(context).textScaleFactor,
                      text: TextSpan(
                        children: [
                          const TextSpan(
                            text: 'Year\n',
                            style: TextStyle(),
                          ),
                          TextSpan(
                            text: '2',
                            style:
                                FlutterFlowTheme.of(context).bodyLarge.override(
                                      fontFamily: 'Plus Jakarta Sans',
                                      fontWeight: FontWeight.bold,
                                      lineHeight: 1.5,
                                    ),
                          )
                        ],
                        style: FlutterFlowTheme.of(context).labelMedium,
                      ),
                    ),
                  ),
                ].divide(const SizedBox(width: 12.0)),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: RichText(
                      textScaleFactor: MediaQuery.of(context).textScaleFactor,
                      text: TextSpan(
                        children: [
                          const TextSpan(
                            text: 'Branch\n',
                            style: TextStyle(),
                          ),
                          TextSpan(
                            text: 'Computer Science',
                            style:
                                FlutterFlowTheme.of(context).bodyLarge.override(
                                      fontFamily: 'Plus Jakarta Sans',
                                      fontWeight: FontWeight.bold,
                                      lineHeight: 1.5,
                                    ),
                          )
                        ],
                        style: FlutterFlowTheme.of(context).labelMedium,
                      ),
                    ),
                  ),
                  Expanded(
                    child: RichText(
                      textScaleFactor: MediaQuery.of(context).textScaleFactor,
                      text: TextSpan(
                        children: [
                          const TextSpan(
                            text: 'Section\n',
                            style: TextStyle(),
                          ),
                          TextSpan(
                            text: 'B',
                            style:
                                FlutterFlowTheme.of(context).bodyLarge.override(
                                      fontFamily: 'Plus Jakarta Sans',
                                      fontWeight: FontWeight.bold,
                                      lineHeight: 1.5,
                                    ),
                          )
                        ],
                        style: FlutterFlowTheme.of(context).labelMedium,
                      ),
                    ),
                  ),
                ].divide(const SizedBox(width: 12.0)),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: RichText(
                      textScaleFactor: MediaQuery.of(context).textScaleFactor,
                      text: TextSpan(
                        children: [
                          const TextSpan(
                            text: 'Student\n',
                            style: TextStyle(),
                          ),
                          TextSpan(
                            text: 'Computer Science',
                            style:
                                FlutterFlowTheme.of(context).bodyLarge.override(
                                      fontFamily: 'Plus Jakarta Sans',
                                      fontWeight: FontWeight.bold,
                                      lineHeight: 1.5,
                                    ),
                          )
                        ],
                        style: FlutterFlowTheme.of(context).labelMedium,
                      ),
                    ),
                  ),
                  Expanded(
                    child: RichText(
                      textScaleFactor: MediaQuery.of(context).textScaleFactor,
                      text: TextSpan(
                        children: [
                          const TextSpan(
                            text: 'Batch\n',
                            style: TextStyle(),
                          ),
                          TextSpan(
                            text: '2',
                            style:
                                FlutterFlowTheme.of(context).bodyLarge.override(
                                      fontFamily: 'Plus Jakarta Sans',
                                      fontWeight: FontWeight.bold,
                                      lineHeight: 1.5,
                                    ),
                          )
                        ],
                        style: FlutterFlowTheme.of(context).labelMedium,
                      ),
                    ),
                  ),
                ].divide(const SizedBox(width: 12.0)),
              ),
            ),
            Divider(
              height: 2.0,
              thickness: 1.0,
              color: FlutterFlowTheme.of(context).alternate,
            ),
          ].divide(const SizedBox(height: 4.0)).addToEnd(const SizedBox(height: 12.0)),
        ),
      ),
    );
  }
}
