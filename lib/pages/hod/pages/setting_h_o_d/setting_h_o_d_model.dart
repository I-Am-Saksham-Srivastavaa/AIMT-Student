import '/flutter_flow/flutter_flow_util.dart';
import '/pages/hod/components/nav_bar_h_o_d/nav_bar_h_o_d_widget.dart';
import '/pages/hod/components/side_nav_h_o_d/side_nav_h_o_d_widget.dart';
import 'setting_h_o_d_widget.dart' show SettingHODWidget;
import 'package:flutter/material.dart';

class SettingHODModel extends FlutterFlowModel<SettingHODWidget> {
  ///  Local state fields for this page.

  int selectedPage = 2;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for sideNavHOD component.
  late SideNavHODModel sideNavHODModel;
  // Model for NavBarHOD component.
  late NavBarHODModel navBarHODModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    sideNavHODModel = createModel(context, () => SideNavHODModel());
    navBarHODModel = createModel(context, () => NavBarHODModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    sideNavHODModel.dispose();
    navBarHODModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
