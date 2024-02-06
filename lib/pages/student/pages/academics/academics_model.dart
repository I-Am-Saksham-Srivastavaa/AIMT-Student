import '/flutter_flow/flutter_flow_util.dart';
import '/pages/student/components/academic_overview/academic_overview_widget.dart';
import '/pages/student/components/assignment_overview/assignment_overview_widget.dart';
import '/pages/student/components/side_nav/side_nav_widget.dart';
import 'academics_widget.dart' show AcademicsWidget;
import 'package:flutter/material.dart';

class AcademicsModel extends FlutterFlowModel<AcademicsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for sideNav component.
  late SideNavModel sideNavModel;
  // Model for AcademicOverview component.
  late AcademicOverviewModel academicOverviewModel;
  // Model for AssignmentOverview component.
  late AssignmentOverviewModel assignmentOverviewModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    sideNavModel = createModel(context, () => SideNavModel());
    academicOverviewModel = createModel(context, () => AcademicOverviewModel());
    assignmentOverviewModel =
        createModel(context, () => AssignmentOverviewModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    sideNavModel.dispose();
    academicOverviewModel.dispose();
    assignmentOverviewModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
