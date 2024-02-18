import '/flutter_flow/flutter_flow_util.dart';
import 'time_table_widget.dart' show TimeTableWidget;
import 'package:flutter/material.dart';

class TimeTableModel extends FlutterFlowModel<TimeTableWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tabBarController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
