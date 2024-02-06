import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/pages/faculty/components/side_nav_faculty/side_nav_faculty_widget.dart';
import 'students_list_widget.dart' show StudentsListWidget;
import 'package:flutter/material.dart';

class StudentsListModel extends FlutterFlowModel<StudentsListWidget> {
  ///  Local state fields for this page.

  int selectedPage = 2;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for sideNavFaculty component.
  late SideNavFacultyModel sideNavFacultyModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // State field(s) for ChoiceChips widget.
  List<String>? choiceChipsValues;
  FormFieldController<List<String>>? choiceChipsValueController;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    sideNavFacultyModel = createModel(context, () => SideNavFacultyModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    sideNavFacultyModel.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
