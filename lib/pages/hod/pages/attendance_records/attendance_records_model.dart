import '/flutter_flow/flutter_flow_util.dart';
import '/pages/hod/components/attendance_summary_h_o_d/attendance_summary_h_o_d_widget.dart';
import '/pages/hod/components/attendance_topbar_h_o_d/attendance_topbar_h_o_d_widget.dart';
import '/pages/hod/components/side_nav_h_o_d/side_nav_h_o_d_widget.dart';
import 'attendance_records_widget.dart' show AttendanceRecordsWidget;
import 'package:flutter/material.dart';

class AttendanceRecordsModel extends FlutterFlowModel<AttendanceRecordsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for sideNavHOD component.
  late SideNavHODModel sideNavHODModel;
  // Model for AttendanceTopbarHOD component.
  late AttendanceTopbarHODModel attendanceTopbarHODModel;
  // Model for AttendanceSummaryHOD component.
  late AttendanceSummaryHODModel attendanceSummaryHODModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    sideNavHODModel = createModel(context, () => SideNavHODModel());
    attendanceTopbarHODModel =
        createModel(context, () => AttendanceTopbarHODModel());
    attendanceSummaryHODModel =
        createModel(context, () => AttendanceSummaryHODModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    sideNavHODModel.dispose();
    attendanceTopbarHODModel.dispose();
    attendanceSummaryHODModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
