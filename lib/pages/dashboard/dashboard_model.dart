import '/components/drawer_widget.dart';
import '/components/side_nav_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dashboard_widget.dart' show DashboardWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';

class DashboardModel extends FlutterFlowModel<DashboardWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for sideNav component.
  late SideNavModel sideNavModel;
  // Model for Drawer component.
  late DrawerModel drawerModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    sideNavModel = createModel(context, () => SideNavModel());
    drawerModel = createModel(context, () => DrawerModel());
  }

  void dispose() {
    unfocusNode.dispose();
    sideNavModel.dispose();
    drawerModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
