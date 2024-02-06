import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/support/user_list_small/user_list_small_widget.dart';
import 'grievance_submit_ticket_widget.dart' show GrievanceSubmitTicketWidget;
import 'package:flutter/material.dart';

class GrievanceSubmitTicketModel
    extends FlutterFlowModel<GrievanceSubmitTicketWidget> {
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
  String? choiceChipsValue;
  FormFieldController<List<String>>? choiceChipsValueController;
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
