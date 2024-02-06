import '/components/student_list_component/student_list_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'attendance_overview_faculty_widget.dart'
    show AttendanceOverviewFacultyWidget;
import 'package:flutter/material.dart';

class AttendanceOverviewFacultyModel
    extends FlutterFlowModel<AttendanceOverviewFacultyWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for StudentListComponent component.
  late StudentListComponentModel studentListComponentModel1;
  // Model for StudentListComponent component.
  late StudentListComponentModel studentListComponentModel2;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    studentListComponentModel1 =
        createModel(context, () => StudentListComponentModel());
    studentListComponentModel2 =
        createModel(context, () => StudentListComponentModel());
  }

  @override
  void dispose() {
    studentListComponentModel1.dispose();
    studentListComponentModel2.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
