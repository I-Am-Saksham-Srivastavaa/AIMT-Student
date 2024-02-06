import '/flutter_flow/flutter_flow_util.dart';
import '/pages/hod/components/side_nav_h_o_d/side_nav_h_o_d_widget.dart';
import 'apps_and_service_widget.dart' show AppsAndServiceWidget;
import 'package:flutter/material.dart';

class AppsAndServiceModel extends FlutterFlowModel<AppsAndServiceWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for sideNavHOD component.
  late SideNavHODModel sideNavHODModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    sideNavHODModel = createModel(context, () => SideNavHODModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    sideNavHODModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
