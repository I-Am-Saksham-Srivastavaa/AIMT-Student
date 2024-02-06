import '/flutter_flow/flutter_flow_util.dart';
import 'new_page_h_o_d_widget.dart' show NewPageHODWidget;
import 'package:flutter/material.dart';

class NewPageHODModel extends FlutterFlowModel<NewPageHODWidget> {
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
