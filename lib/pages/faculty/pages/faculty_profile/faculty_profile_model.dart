import '/flutter_flow/flutter_flow_util.dart';
import '/pages/faculty/components/nav_bar_faculty/nav_bar_faculty_widget.dart';
import 'faculty_profile_widget.dart' show FacultyProfileWidget;
import 'package:flutter/material.dart';

class FacultyProfileModel extends FlutterFlowModel<FacultyProfileWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for NavBarFaculty component.
  late NavBarFacultyModel navBarFacultyModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    navBarFacultyModel = createModel(context, () => NavBarFacultyModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    navBarFacultyModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
