import '/flutter_flow/flutter_flow_util.dart';
import '/pages/faculty/components/academic_overview_faculty/academic_overview_faculty_widget.dart';
import '/pages/faculty/components/assignment_overview_faculty/assignment_overview_faculty_widget.dart';
import '/pages/faculty/components/nav_bar_faculty/nav_bar_faculty_widget.dart';
import '/pages/faculty/components/side_nav_faculty/side_nav_faculty_widget.dart';
import 'academic_record_widget.dart' show AcademicRecordWidget;
import 'package:flutter/material.dart';

class AcademicRecordModel extends FlutterFlowModel<AcademicRecordWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for sideNavFaculty component.
  late SideNavFacultyModel sideNavFacultyModel;
  // Model for AcademicOverviewFaculty component.
  late AcademicOverviewFacultyModel academicOverviewFacultyModel;
  // Model for AssignmentOverviewFaculty component.
  late AssignmentOverviewFacultyModel assignmentOverviewFacultyModel;
  // Model for NavBarFaculty component.
  late NavBarFacultyModel navBarFacultyModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    sideNavFacultyModel = createModel(context, () => SideNavFacultyModel());
    academicOverviewFacultyModel =
        createModel(context, () => AcademicOverviewFacultyModel());
    assignmentOverviewFacultyModel =
        createModel(context, () => AssignmentOverviewFacultyModel());
    navBarFacultyModel = createModel(context, () => NavBarFacultyModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    sideNavFacultyModel.dispose();
    academicOverviewFacultyModel.dispose();
    assignmentOverviewFacultyModel.dispose();
    navBarFacultyModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
