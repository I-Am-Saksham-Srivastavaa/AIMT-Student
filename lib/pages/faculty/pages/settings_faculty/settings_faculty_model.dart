import '/flutter_flow/flutter_flow_util.dart';
import '/pages/faculty/components/side_nav_faculty/side_nav_faculty_widget.dart';
import 'settings_faculty_widget.dart' show SettingsFacultyWidget;
import 'package:flutter/material.dart';

class SettingsFacultyModel extends FlutterFlowModel<SettingsFacultyWidget> {
  ///  Local state fields for this page.

  int selectedPage = 2;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for sideNavFaculty component.
  late SideNavFacultyModel sideNavFacultyModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    sideNavFacultyModel = createModel(context, () => SideNavFacultyModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    sideNavFacultyModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
