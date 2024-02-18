import '/flutter_flow/flutter_flow_util.dart';
import '/pages/hod/components/academic_overview_h_o_d/academic_overview_h_o_d_widget.dart';
import '/pages/hod/components/attendance_overview_h_o_d/attendance_overview_h_o_d_widget.dart';
import '/pages/hod/components/finance_overview/finance_overview_widget.dart';
import '/pages/hod/components/nav_bar_h_o_d/nav_bar_h_o_d_widget.dart';
import '/pages/hod/components/side_nav_h_o_d/side_nav_h_o_d_widget.dart';
import 'dashboard_h_o_d_widget.dart' show DashboardHODWidget;
import 'package:flutter/material.dart';

class DashboardHODModel extends FlutterFlowModel<DashboardHODWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for sideNavHOD component.
  late SideNavHODModel sideNavHODModel;
  // Model for AttendanceOverviewHOD component.
  late AttendanceOverviewHODModel attendanceOverviewHODModel;
  // Model for FinanceOverview component.
  late FinanceOverviewModel financeOverviewModel;
  // Model for AcademicOverviewHOD component.
  late AcademicOverviewHODModel academicOverviewHODModel;
  // Model for NavBarHOD component.
  late NavBarHODModel navBarHODModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    sideNavHODModel = createModel(context, () => SideNavHODModel());
    attendanceOverviewHODModel =
        createModel(context, () => AttendanceOverviewHODModel());
    financeOverviewModel = createModel(context, () => FinanceOverviewModel());
    academicOverviewHODModel =
        createModel(context, () => AcademicOverviewHODModel());
    navBarHODModel = createModel(context, () => NavBarHODModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    sideNavHODModel.dispose();
    attendanceOverviewHODModel.dispose();
    financeOverviewModel.dispose();
    academicOverviewHODModel.dispose();
    navBarHODModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
