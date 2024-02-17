import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/pages/support/user_list_small/user_list_small_widget.dart';
import 'submit_ticket_widget.dart' show SubmitTicketWidget;
import 'package:flutter/material.dart';

class SubmitTicketModel extends FlutterFlowModel<SubmitTicketWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  String? get choiceChipsValue =>
      choiceChipsValueController?.value?.firstOrNull;
  set choiceChipsValue(String? val) =>
      choiceChipsValueController?.value = val != null ? [val] : [];
  // Model for user_ListSmall component.
  late UserListSmallModel userListSmallModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    userListSmallModel = createModel(context, () => UserListSmallModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    userListSmallModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
