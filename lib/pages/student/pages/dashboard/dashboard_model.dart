import '/components/event_overview/event_overview_widget.dart';
import '/components/financial_overview_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/student/components/assignment_overview/assignment_overview_widget.dart';
import '/pages/student/components/attendance_topbar/attendance_topbar_widget.dart';
import '/pages/student/components/drawer/drawer_widget.dart';
import '/pages/student/components/side_nav/side_nav_widget.dart';
import 'dashboard_widget.dart' show DashboardWidget;
import 'package:flutter/material.dart';

class DashboardModel extends FlutterFlowModel<DashboardWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for sideNav component.
  late SideNavModel sideNavModel;
  // Model for AttendanceTopbar component.
  late AttendanceTopbarModel attendanceTopbarModel;
  // Model for FinancialOverview component.
  late FinancialOverviewModel financialOverviewModel;
  // Model for AssignmentOverview component.
  late AssignmentOverviewModel assignmentOverviewModel;
  // Model for EventOverview component.
  late EventOverviewModel eventOverviewModel;
  // Model for Drawer component.
  late DrawerModel drawerModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    sideNavModel = createModel(context, () => SideNavModel());
    attendanceTopbarModel = createModel(context, () => AttendanceTopbarModel());
    financialOverviewModel =
        createModel(context, () => FinancialOverviewModel());
    assignmentOverviewModel =
        createModel(context, () => AssignmentOverviewModel());
    eventOverviewModel = createModel(context, () => EventOverviewModel());
    drawerModel = createModel(context, () => DrawerModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    sideNavModel.dispose();
    attendanceTopbarModel.dispose();
    financialOverviewModel.dispose();
    assignmentOverviewModel.dispose();
    eventOverviewModel.dispose();
    drawerModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
