import '/components/event_overview/event_overview_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/faculty/components/side_nav_faculty/side_nav_faculty_widget.dart';
import '/pages/hod/components/finance_overview/finance_overview_widget.dart';
import '/pages/student/components/assignment_overview/assignment_overview_widget.dart';
import 'dashboard_faculty_widget.dart' show DashboardFacultyWidget;
import 'package:flutter/material.dart';

class DashboardFacultyModel extends FlutterFlowModel<DashboardFacultyWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for sideNavFaculty component.
  late SideNavFacultyModel sideNavFacultyModel;
  // Model for FinanceOverview component.
  late FinanceOverviewModel financeOverviewModel;
  // Model for AssignmentOverview component.
  late AssignmentOverviewModel assignmentOverviewModel;
  // Model for EventOverview component.
  late EventOverviewModel eventOverviewModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    sideNavFacultyModel = createModel(context, () => SideNavFacultyModel());
    financeOverviewModel = createModel(context, () => FinanceOverviewModel());
    assignmentOverviewModel =
        createModel(context, () => AssignmentOverviewModel());
    eventOverviewModel = createModel(context, () => EventOverviewModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    sideNavFacultyModel.dispose();
    financeOverviewModel.dispose();
    assignmentOverviewModel.dispose();
    eventOverviewModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
