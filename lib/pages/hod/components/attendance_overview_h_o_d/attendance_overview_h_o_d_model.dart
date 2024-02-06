import '/components/faculty_list_compenent/faculty_list_compenent_widget.dart';
import '/components/student_list_component/student_list_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'attendance_overview_h_o_d_widget.dart' show AttendanceOverviewHODWidget;
import 'package:flutter/material.dart';

class AttendanceOverviewHODModel
    extends FlutterFlowModel<AttendanceOverviewHODWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for FacultyListCompenent component.
  late FacultyListCompenentModel facultyListCompenentModel;
  // Model for StudentListComponent component.
  late StudentListComponentModel studentListComponentModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    facultyListCompenentModel =
        createModel(context, () => FacultyListCompenentModel());
    studentListComponentModel =
        createModel(context, () => StudentListComponentModel());
  }

  @override
  void dispose() {
    facultyListCompenentModel.dispose();
    studentListComponentModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
