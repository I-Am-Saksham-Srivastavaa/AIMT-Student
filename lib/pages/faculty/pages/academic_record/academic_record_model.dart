import '/flutter_flow/flutter_flow_util.dart';
import '/pages/faculty/components/side_nav_faculty/side_nav_faculty_widget.dart';
import 'academic_record_widget.dart' show AcademicRecordWidget;
import 'package:flutter/material.dart';

class AcademicRecordModel extends FlutterFlowModel<AcademicRecordWidget> {
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
