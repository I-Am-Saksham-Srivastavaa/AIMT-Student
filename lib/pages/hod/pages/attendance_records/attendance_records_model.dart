import '/flutter_flow/flutter_flow_util.dart';
import '/pages/hod/components/attendance_overview_h_o_d/attendance_overview_h_o_d_widget.dart';
import '/pages/hod/components/attendance_summary_h_o_d/attendance_summary_h_o_d_widget.dart';
import '/pages/hod/components/nav_bar_h_o_d/nav_bar_h_o_d_widget.dart';
import '/pages/hod/components/side_nav_h_o_d/side_nav_h_o_d_widget.dart';
import 'attendance_records_widget.dart' show AttendanceRecordsWidget;
import 'package:flutter/material.dart';

class AttendanceRecordsModel extends FlutterFlowModel<AttendanceRecordsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for sideNavHOD component.
  late SideNavHODModel sideNavHODModel;
  // Model for AttendanceOverviewHOD component.
  late AttendanceOverviewHODModel attendanceOverviewHODModel;
  // Model for AttendanceSummaryHOD component.
  late AttendanceSummaryHODModel attendanceSummaryHODModel;
  // Model for NavBarHOD component.
  late NavBarHODModel navBarHODModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    sideNavHODModel = createModel(context, () => SideNavHODModel());
    attendanceOverviewHODModel =
        createModel(context, () => AttendanceOverviewHODModel());
    attendanceSummaryHODModel =
        createModel(context, () => AttendanceSummaryHODModel());
    navBarHODModel = createModel(context, () => NavBarHODModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    sideNavHODModel.dispose();
    attendanceOverviewHODModel.dispose();
    attendanceSummaryHODModel.dispose();
    navBarHODModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
