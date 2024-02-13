import '/flutter_flow/flutter_flow_util.dart';
import 'about_developer_widget.dart' show AboutDeveloperWidget;
import 'package:flutter/material.dart';

class AboutDeveloperModel extends FlutterFlowModel<AboutDeveloperWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  DateTime? datePicked;

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
