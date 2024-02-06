import '/flutter_flow/flutter_flow_util.dart';
import '/pages/hod/components/drawer_h_o_d/drawer_h_o_d_widget.dart';
import '/pages/hod/components/side_nav_h_o_d/side_nav_h_o_d_widget.dart';
import 'dashboard_h_o_d_widget.dart' show DashboardHODWidget;
import 'package:flutter/material.dart';

class DashboardHODModel extends FlutterFlowModel<DashboardHODWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for sideNavHOD component.
  late SideNavHODModel sideNavHODModel;
  // Model for DrawerHOD component.
  late DrawerHODModel drawerHODModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    sideNavHODModel = createModel(context, () => SideNavHODModel());
    drawerHODModel = createModel(context, () => DrawerHODModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    sideNavHODModel.dispose();
    drawerHODModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
