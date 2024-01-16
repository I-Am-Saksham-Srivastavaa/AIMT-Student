import '/components/side_nav/side_nav_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'create_profile_widget.dart' show CreateProfileWidget;
import 'package:flutter/material.dart';

class CreateProfileModel extends FlutterFlowModel<CreateProfileWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for sideNav component.
  late SideNavModel sideNavModel;
  // State field(s) for yourName widget.
  FocusNode? yourNameFocusNode;
  TextEditingController? yourNameController;
  String? Function(BuildContext, String?)? yourNameControllerValidator;
  // State field(s) for AKTURollNo widget.
  FocusNode? aKTURollNoFocusNode;
  TextEditingController? aKTURollNoController;
  String? Function(BuildContext, String?)? aKTURollNoControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    sideNavModel = createModel(context, () => SideNavModel());
  }

  @override
  void dispose() {
    sideNavModel.dispose();
    yourNameFocusNode?.dispose();
    yourNameController?.dispose();

    aKTURollNoFocusNode?.dispose();
    aKTURollNoController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
