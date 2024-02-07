import '/flutter_flow/flutter_flow_util.dart';
import '/pages/hod/components/academic_overview_h_o_d/academic_overview_h_o_d_widget.dart';
import '/pages/hod/components/assignment_overview_h_o_d/assignment_overview_h_o_d_widget.dart';
import '/pages/hod/components/side_nav_h_o_d/side_nav_h_o_d_widget.dart';
import 'academic_records_widget.dart' show AcademicRecordsWidget;
import 'package:flutter/material.dart';

class AcademicRecordsModel extends FlutterFlowModel<AcademicRecordsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for sideNavHOD component.
  late SideNavHODModel sideNavHODModel;
  // Model for AcademicOverviewHOD component.
  late AcademicOverviewHODModel academicOverviewHODModel;
  // Model for AssignmentOverviewHOD component.
  late AssignmentOverviewHODModel assignmentOverviewHODModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    sideNavHODModel = createModel(context, () => SideNavHODModel());
    academicOverviewHODModel =
        createModel(context, () => AcademicOverviewHODModel());
    assignmentOverviewHODModel =
        createModel(context, () => AssignmentOverviewHODModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    sideNavHODModel.dispose();
    academicOverviewHODModel.dispose();
    assignmentOverviewHODModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
