import '/components/student_list_component/student_list_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'attendance_overview_h_o_d_widget.dart' show AttendanceOverviewHODWidget;
import 'package:flutter/material.dart';

class AttendanceOverviewHODModel
    extends FlutterFlowModel<AttendanceOverviewHODWidget> {
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
