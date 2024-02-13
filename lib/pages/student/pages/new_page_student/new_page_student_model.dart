import '/flutter_flow/flutter_flow_util.dart';
import 'new_page_student_widget.dart' show NewPageStudentWidget;
import 'package:flutter/material.dart';

class NewPageStudentModel extends FlutterFlowModel<NewPageStudentWidget> {
  ///  Local state fields for this page.

  int selectedPage = 1;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
