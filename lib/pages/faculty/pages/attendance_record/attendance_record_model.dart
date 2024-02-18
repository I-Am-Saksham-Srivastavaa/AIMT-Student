import '/flutter_flow/flutter_flow_util.dart';
import '/pages/faculty/components/attendance_overview_faculty/attendance_overview_faculty_widget.dart';
import '/pages/faculty/components/attendance_summary_faculty/attendance_summary_faculty_widget.dart';
import '/pages/faculty/components/nav_bar_faculty/nav_bar_faculty_widget.dart';
import '/pages/faculty/components/side_nav_faculty/side_nav_faculty_widget.dart';
import 'attendance_record_widget.dart' show AttendanceRecordWidget;
import 'package:flutter/material.dart';

class AttendanceRecordModel extends FlutterFlowModel<AttendanceRecordWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for sideNavFaculty component.
  late SideNavFacultyModel sideNavFacultyModel;
  // Model for AttendanceOverviewFaculty component.
  late AttendanceOverviewFacultyModel attendanceOverviewFacultyModel;
  // Model for AttendanceSummaryFaculty component.
  late AttendanceSummaryFacultyModel attendanceSummaryFacultyModel;
  // Model for NavBarFaculty component.
  late NavBarFacultyModel navBarFacultyModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    sideNavFacultyModel = createModel(context, () => SideNavFacultyModel());
    attendanceOverviewFacultyModel =
        createModel(context, () => AttendanceOverviewFacultyModel());
    attendanceSummaryFacultyModel =
        createModel(context, () => AttendanceSummaryFacultyModel());
    navBarFacultyModel = createModel(context, () => NavBarFacultyModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    sideNavFacultyModel.dispose();
    attendanceOverviewFacultyModel.dispose();
    attendanceSummaryFacultyModel.dispose();
    navBarFacultyModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
