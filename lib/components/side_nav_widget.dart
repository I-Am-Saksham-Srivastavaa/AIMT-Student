import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'side_nav_model.dart';
export 'side_nav_model.dart';

class SideNavWidget extends StatefulWidget {
  const SideNavWidget({
    Key? key,
    required this.selectedNav,
  }) : super(key: key);

  final int? selectedNav;

  @override
  _SideNavWidgetState createState() => _SideNavWidgetState();
}

class _SideNavWidgetState extends State<SideNavWidget> {
  late SideNavModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SideNavModel());

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

    return Visibility(
      visible: responsiveVisibility(
        context: context,
        phone: false,
        tablet: false,
      ),
      child: AnimatedContainer(
        duration: Duration(milliseconds: 200),
        curve: Curves.easeInOut,
        width: FFAppState().navOpen == true ? 270.0 : 72.0,
        height: double.infinity,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).primaryBackground,
          borderRadius: BorderRadius.circular(0.0),
          border: Border.all(
            color: FlutterFlowTheme.of(context).alternate,
            width: 1.0,
          ),
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 16.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      width: 50.0,
                      height: 50.0,
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: Image.asset(
                        'assets/images/AIMT.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    if (FFAppState().navOpen == true)
                      Flexible(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              12.0, 0.0, 0.0, 0.0),
                          child: Text(
                            'Ambalika Institute of Management and Technology',
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ),
                      ),
                  ],
                ),
              ),
              InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  context.pushNamed(
                    'Profile',
                    extra: <String, dynamic>{
                      kTransitionInfoKey: TransitionInfo(
                        hasTransition: true,
                        transitionType: PageTransitionType.fade,
                        duration: Duration(milliseconds: 0),
                      ),
                    },
                  );
                },
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 200),
                  curve: Curves.easeInOut,
                  width: double.infinity,
                  decoration: BoxDecoration(),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 12.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        AnimatedContainer(
                          duration: Duration(milliseconds: 200),
                          curve: Curves.easeInOut,
                          width: FFAppState().navOpen == true ? 50.0 : 36.0,
                          height: FFAppState().navOpen == true ? 50.0 : 36.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).accent1,
                            borderRadius: BorderRadius.circular(10.0),
                            border: Border.all(
                              color: FlutterFlowTheme.of(context).primary,
                              width: 2.0,
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(2.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.network(
                                'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/aimt-b5x8nf/assets/gyffon47xt4f/SakshamSrivastavaPhotograph.jpg',
                                width: 44.0,
                                height: 44.0,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        if (FFAppState().navOpen == true)
                          Expanded(
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  12.0, 0.0, 0.0, 0.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Saksham Srivastava',
                                    style:
                                        FlutterFlowTheme.of(context).bodyLarge,
                                  ),
                                  RichText(
                                    textScaleFactor:
                                        MediaQuery.of(context).textScaleFactor,
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: 'AKTU Roll No.:',
                                          style: FlutterFlowTheme.of(context)
                                              .bodySmall
                                              .override(
                                                fontFamily: 'Plus Jakarta Sans',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                              ),
                                        ),
                                        TextSpan(
                                          text: '2203630100136',
                                          style: TextStyle(),
                                        )
                                      ],
                                      style: FlutterFlowTheme.of(context)
                                          .bodySmall
                                          .override(
                                            fontFamily: 'Plus Jakarta Sans',
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
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
              ),
              Divider(
                height: 12.0,
                thickness: 2.0,
                color: FlutterFlowTheme.of(context).alternate,
              ),
              if (FFAppState().navOpen == true)
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 0.0, 0.0),
                  child: Text(
                    'Platform Navigation',
                    style: FlutterFlowTheme.of(context).labelMedium,
                  ),
                ),
              SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MouseRegion(
                      opaque: false,
                      cursor: SystemMouseCursors.click ?? MouseCursor.defer,
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                        child: AnimatedContainer(
                          duration: Duration(milliseconds: 200),
                          curve: Curves.easeInOut,
                          width: double.infinity,
                          height: 44.0,
                          decoration: BoxDecoration(
                            color: () {
                              if (_model.mouseRegionHovered1!) {
                                return FlutterFlowTheme.of(context)
                                    .secondaryBackground;
                              } else if (widget.selectedNav == 1) {
                                return FlutterFlowTheme.of(context).accent1;
                              } else {
                                return FlutterFlowTheme.of(context)
                                    .primaryBackground;
                              }
                            }(),
                            borderRadius: BorderRadius.circular(12.0),
                            shape: BoxShape.rectangle,
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(4.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      8.0, 0.0, 8.0, 0.0),
                                  child: Icon(
                                    Icons.space_dashboard,
                                    color: _model.selectedNav == 1
                                        ? FlutterFlowTheme.of(context).primary
                                        : FlutterFlowTheme.of(context)
                                            .primaryText,
                                    size: 24.0,
                                  ),
                                ),
                                if (FFAppState().navOpen == true)
                                  Expanded(
                                    child: Text(
                                      'Dashboard',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium,
                                    ),
                                  ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      onEnter: ((event) async {
                        setState(() => _model.mouseRegionHovered1 = true);
                      }),
                      onExit: ((event) async {
                        setState(() => _model.mouseRegionHovered1 = false);
                      }),
                    ),
                    MouseRegion(
                      opaque: false,
                      cursor: SystemMouseCursors.click ?? MouseCursor.defer,
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                        child: AnimatedContainer(
                          duration: Duration(milliseconds: 200),
                          curve: Curves.easeInOut,
                          width: double.infinity,
                          height: 44.0,
                          decoration: BoxDecoration(
                            color: () {
                              if (_model.mouseRegionHovered2!) {
                                return FlutterFlowTheme.of(context)
                                    .secondaryBackground;
                              } else if (widget.selectedNav == 1) {
                                return FlutterFlowTheme.of(context).accent1;
                              } else {
                                return FlutterFlowTheme.of(context)
                                    .primaryBackground;
                              }
                            }(),
                            borderRadius: BorderRadius.circular(12.0),
                            shape: BoxShape.rectangle,
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(4.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      8.0, 0.0, 8.0, 0.0),
                                  child: Icon(
                                    Icons.web,
                                    color: _model.selectedNav == 1
                                        ? FlutterFlowTheme.of(context).primary
                                        : FlutterFlowTheme.of(context)
                                            .primaryText,
                                    size: 24.0,
                                  ),
                                ),
                                if (FFAppState().navOpen == true)
                                  Expanded(
                                    child: Text(
                                      'Attendance',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium,
                                    ),
                                  ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      onEnter: ((event) async {
                        setState(() => _model.mouseRegionHovered2 = true);
                      }),
                      onExit: ((event) async {
                        setState(() => _model.mouseRegionHovered2 = false);
                      }),
                    ),
                    MouseRegion(
                      opaque: false,
                      cursor: SystemMouseCursors.click ?? MouseCursor.defer,
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            context.pushNamed(
                              'Academics',
                              extra: <String, dynamic>{
                                kTransitionInfoKey: TransitionInfo(
                                  hasTransition: true,
                                  transitionType: PageTransitionType.fade,
                                  duration: Duration(milliseconds: 0),
                                ),
                              },
                            );
                          },
                          child: AnimatedContainer(
                            duration: Duration(milliseconds: 200),
                            curve: Curves.easeInOut,
                            width: double.infinity,
                            height: 44.0,
                            decoration: BoxDecoration(
                              color: () {
                                if (_model.mouseRegionHovered3!) {
                                  return FlutterFlowTheme.of(context)
                                      .secondaryBackground;
                                } else if (widget.selectedNav == 4) {
                                  return FlutterFlowTheme.of(context).accent1;
                                } else {
                                  return FlutterFlowTheme.of(context)
                                      .primaryBackground;
                                }
                              }(),
                              borderRadius: BorderRadius.circular(12.0),
                              shape: BoxShape.rectangle,
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(4.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        8.0, 0.0, 8.0, 0.0),
                                    child: FaIcon(
                                      FontAwesomeIcons.award,
                                      color: _model.selectedNav == 4
                                          ? FlutterFlowTheme.of(context).primary
                                          : FlutterFlowTheme.of(context)
                                              .primaryText,
                                      size: 24.0,
                                    ),
                                  ),
                                  if (FFAppState().navOpen == true)
                                    Expanded(
                                      child: Text(
                                        'Academics',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium,
                                      ),
                                    ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      onEnter: ((event) async {
                        setState(() => _model.mouseRegionHovered3 = true);
                      }),
                      onExit: ((event) async {
                        setState(() => _model.mouseRegionHovered3 = false);
                      }),
                    ),
                    MouseRegion(
                      opaque: false,
                      cursor: SystemMouseCursors.click ?? MouseCursor.defer,
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                        child: AnimatedContainer(
                          duration: Duration(milliseconds: 200),
                          curve: Curves.easeInOut,
                          width: double.infinity,
                          height: 44.0,
                          decoration: BoxDecoration(
                            color: () {
                              if (_model.mouseRegionHovered4!) {
                                return FlutterFlowTheme.of(context)
                                    .secondaryBackground;
                              } else if (widget.selectedNav == 1) {
                                return FlutterFlowTheme.of(context).accent1;
                              } else {
                                return FlutterFlowTheme.of(context)
                                    .primaryBackground;
                              }
                            }(),
                            borderRadius: BorderRadius.circular(12.0),
                            shape: BoxShape.rectangle,
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(4.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      8.0, 0.0, 8.0, 0.0),
                                  child: FaIcon(
                                    FontAwesomeIcons.creditCard,
                                    color: _model.selectedNav == 1
                                        ? FlutterFlowTheme.of(context).primary
                                        : FlutterFlowTheme.of(context)
                                            .primaryText,
                                    size: 20.0,
                                  ),
                                ),
                                if (FFAppState().navOpen == true)
                                  Expanded(
                                    child: Text(
                                      'Financial Record',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium,
                                    ),
                                  ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      onEnter: ((event) async {
                        setState(() => _model.mouseRegionHovered4 = true);
                      }),
                      onExit: ((event) async {
                        setState(() => _model.mouseRegionHovered4 = false);
                      }),
                    ),
                    MouseRegion(
                      opaque: false,
                      cursor: SystemMouseCursors.click ?? MouseCursor.defer,
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                        child: AnimatedContainer(
                          duration: Duration(milliseconds: 200),
                          curve: Curves.easeInOut,
                          width: double.infinity,
                          height: 44.0,
                          decoration: BoxDecoration(
                            color: () {
                              if (_model.mouseRegionHovered5!) {
                                return FlutterFlowTheme.of(context)
                                    .secondaryBackground;
                              } else if (widget.selectedNav == 1) {
                                return FlutterFlowTheme.of(context).accent1;
                              } else {
                                return FlutterFlowTheme.of(context)
                                    .primaryBackground;
                              }
                            }(),
                            borderRadius: BorderRadius.circular(12.0),
                            shape: BoxShape.rectangle,
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(4.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      8.0, 0.0, 8.0, 0.0),
                                  child: Icon(
                                    Icons.apps,
                                    color: _model.selectedNav == 1
                                        ? FlutterFlowTheme.of(context).primary
                                        : FlutterFlowTheme.of(context)
                                            .primaryText,
                                    size: 24.0,
                                  ),
                                ),
                                if (FFAppState().navOpen == true)
                                  Expanded(
                                    child: Text(
                                      'Apps',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium,
                                    ),
                                  ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      onEnter: ((event) async {
                        setState(() => _model.mouseRegionHovered5 = true);
                      }),
                      onExit: ((event) async {
                        setState(() => _model.mouseRegionHovered5 = false);
                      }),
                    ),
                    MouseRegion(
                      opaque: false,
                      cursor: SystemMouseCursors.click ?? MouseCursor.defer,
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            context.pushNamed(
                              'Faculty',
                              extra: <String, dynamic>{
                                kTransitionInfoKey: TransitionInfo(
                                  hasTransition: true,
                                  transitionType: PageTransitionType.fade,
                                  duration: Duration(milliseconds: 0),
                                ),
                              },
                            );
                          },
                          child: AnimatedContainer(
                            duration: Duration(milliseconds: 200),
                            curve: Curves.easeInOut,
                            width: double.infinity,
                            height: 44.0,
                            decoration: BoxDecoration(
                              color: () {
                                if (_model.mouseRegionHovered6!) {
                                  return FlutterFlowTheme.of(context)
                                      .secondaryBackground;
                                } else if (widget.selectedNav == 2) {
                                  return FlutterFlowTheme.of(context).accent1;
                                } else {
                                  return FlutterFlowTheme.of(context)
                                      .primaryBackground;
                                }
                              }(),
                              borderRadius: BorderRadius.circular(12.0),
                              shape: BoxShape.rectangle,
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(4.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        8.0, 0.0, 8.0, 0.0),
                                    child: Icon(
                                      Icons.groups,
                                      color: _model.selectedNav == 2
                                          ? FlutterFlowTheme.of(context).primary
                                          : FlutterFlowTheme.of(context)
                                              .primaryText,
                                      size: 24.0,
                                    ),
                                  ),
                                  if (FFAppState().navOpen == true)
                                    Expanded(
                                      child: Text(
                                        'Faculty',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium,
                                      ),
                                    ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      onEnter: ((event) async {
                        setState(() => _model.mouseRegionHovered6 = true);
                      }),
                      onExit: ((event) async {
                        setState(() => _model.mouseRegionHovered6 = false);
                      }),
                    ),
                    MouseRegion(
                      opaque: false,
                      cursor: SystemMouseCursors.click ?? MouseCursor.defer,
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            context.pushNamed(
                              'Gallery',
                              extra: <String, dynamic>{
                                kTransitionInfoKey: TransitionInfo(
                                  hasTransition: true,
                                  transitionType: PageTransitionType.fade,
                                  duration: Duration(milliseconds: 0),
                                ),
                              },
                            );
                          },
                          child: AnimatedContainer(
                            duration: Duration(milliseconds: 200),
                            curve: Curves.easeInOut,
                            width: double.infinity,
                            height: 44.0,
                            decoration: BoxDecoration(
                              color: () {
                                if (_model.mouseRegionHovered7!) {
                                  return FlutterFlowTheme.of(context)
                                      .secondaryBackground;
                                } else if (widget.selectedNav == 3) {
                                  return FlutterFlowTheme.of(context).accent1;
                                } else {
                                  return FlutterFlowTheme.of(context)
                                      .primaryBackground;
                                }
                              }(),
                              borderRadius: BorderRadius.circular(12.0),
                              shape: BoxShape.rectangle,
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(4.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        8.0, 0.0, 8.0, 0.0),
                                    child: Icon(
                                      Icons.photo_library_outlined,
                                      color: _model.selectedNav == 3
                                          ? FlutterFlowTheme.of(context).primary
                                          : FlutterFlowTheme.of(context)
                                              .primaryText,
                                      size: 24.0,
                                    ),
                                  ),
                                  if (FFAppState().navOpen == true)
                                    Expanded(
                                      child: Text(
                                        'Gallery',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium,
                                      ),
                                    ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      onEnter: ((event) async {
                        setState(() => _model.mouseRegionHovered7 = true);
                      }),
                      onExit: ((event) async {
                        setState(() => _model.mouseRegionHovered7 = false);
                      }),
                    ),
                    if (FFAppState().navOpen == true)
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
                        child: Text(
                          'Platform Settings',
                          style: FlutterFlowTheme.of(context).labelMedium,
                        ),
                      ),
                    MouseRegion(
                      opaque: false,
                      cursor: SystemMouseCursors.click ?? MouseCursor.defer,
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                        child: AnimatedContainer(
                          duration: Duration(milliseconds: 200),
                          curve: Curves.easeInOut,
                          width: double.infinity,
                          height: 44.0,
                          decoration: BoxDecoration(
                            color: () {
                              if (_model.mouseRegionHovered8!) {
                                return FlutterFlowTheme.of(context)
                                    .secondaryBackground;
                              } else if (widget.selectedNav == 5) {
                                return FlutterFlowTheme.of(context).accent1;
                              } else {
                                return FlutterFlowTheme.of(context)
                                    .primaryBackground;
                              }
                            }(),
                            borderRadius: BorderRadius.circular(12.0),
                            shape: BoxShape.rectangle,
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(4.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      8.0, 0.0, 8.0, 0.0),
                                  child: Icon(
                                    Icons.settings_rounded,
                                    color: _model.selectedNav == 5
                                        ? FlutterFlowTheme.of(context).primary
                                        : FlutterFlowTheme.of(context)
                                            .primaryText,
                                    size: 24.0,
                                  ),
                                ),
                                if (FFAppState().navOpen == true)
                                  Expanded(
                                    child: Text(
                                      'Settings',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium,
                                    ),
                                  ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      onEnter: ((event) async {
                        setState(() => _model.mouseRegionHovered8 = true);
                      }),
                      onExit: ((event) async {
                        setState(() => _model.mouseRegionHovered8 = false);
                      }),
                    ),
                    MouseRegion(
                      opaque: false,
                      cursor: SystemMouseCursors.click ?? MouseCursor.defer,
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                        child: AnimatedContainer(
                          duration: Duration(milliseconds: 200),
                          curve: Curves.easeInOut,
                          width: double.infinity,
                          height: 44.0,
                          decoration: BoxDecoration(
                            color: () {
                              if (_model.mouseRegionHovered9!) {
                                return FlutterFlowTheme.of(context)
                                    .secondaryBackground;
                              } else if (widget.selectedNav == 5) {
                                return FlutterFlowTheme.of(context).accent1;
                              } else {
                                return FlutterFlowTheme.of(context)
                                    .primaryBackground;
                              }
                            }(),
                            borderRadius: BorderRadius.circular(12.0),
                            shape: BoxShape.rectangle,
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(4.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      8.0, 0.0, 8.0, 0.0),
                                  child: Icon(
                                    Icons.report_sharp,
                                    color: _model.selectedNav == 5
                                        ? FlutterFlowTheme.of(context).primary
                                        : FlutterFlowTheme.of(context)
                                            .primaryText,
                                    size: 24.0,
                                  ),
                                ),
                                if (FFAppState().navOpen == true)
                                  Expanded(
                                    child: Text(
                                      'Report Grievance',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium,
                                    ),
                                  ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      onEnter: ((event) async {
                        setState(() => _model.mouseRegionHovered9 = true);
                      }),
                      onExit: ((event) async {
                        setState(() => _model.mouseRegionHovered9 = false);
                      }),
                    ),
                  ].divide(SizedBox(height: 12.0)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
