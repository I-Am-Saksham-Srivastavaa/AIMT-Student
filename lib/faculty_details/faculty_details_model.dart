import '/flutter_flow/flutter_flow_util.dart';
import 'faculty_details_widget.dart' show FacultyDetailsWidget;
import 'package:flutter/material.dart';

class FacultyDetailsModel extends FlutterFlowModel<FacultyDetailsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for RatingBar widget.
  double? ratingBarValue;

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
