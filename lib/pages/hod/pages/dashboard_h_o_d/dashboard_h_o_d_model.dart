import '/flutter_flow/flutter_flow_util.dart';
import '/pages/hod/components/academic_overview_h_o_d/academic_overview_h_o_d_widget.dart';
import '/pages/hod/components/attendance_topbar_h_o_d/attendance_topbar_h_o_d_widget.dart';
import '/pages/hod/components/finance_overview/finance_overview_widget.dart';
import '/pages/hod/components/side_nav_h_o_d/side_nav_h_o_d_widget.dart';
import 'dashboard_h_o_d_widget.dart' show DashboardHODWidget;
import 'package:flutter/material.dart';

class DashboardHODModel extends FlutterFlowModel<DashboardHODWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for sideNavHOD component.
  late SideNavHODModel sideNavHODModel;
  // Model for AttendanceTopbarHOD component.
  late AttendanceTopbarHODModel attendanceTopbarHODModel;
  // Model for FinanceOverview component.
  late FinanceOverviewModel financeOverviewModel;
  // Model for AcademicOverviewHOD component.
  late AcademicOverviewHODModel academicOverviewHODModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    sideNavHODModel = createModel(context, () => SideNavHODModel());
    attendanceTopbarHODModel =
        createModel(context, () => AttendanceTopbarHODModel());
    financeOverviewModel = createModel(context, () => FinanceOverviewModel());
    academicOverviewHODModel =
        createModel(context, () => AcademicOverviewHODModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    sideNavHODModel.dispose();
    attendanceTopbarHODModel.dispose();
    financeOverviewModel.dispose();
    academicOverviewHODModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
