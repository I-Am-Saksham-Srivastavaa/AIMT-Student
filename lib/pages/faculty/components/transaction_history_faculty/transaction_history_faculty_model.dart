import '/flutter_flow/flutter_flow_util.dart';
import 'transaction_history_faculty_widget.dart'
    show TransactionHistoryFacultyWidget;
import 'package:flutter/material.dart';

class TransactionHistoryFacultyModel
    extends FlutterFlowModel<TransactionHistoryFacultyWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
