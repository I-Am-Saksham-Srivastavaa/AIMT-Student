import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'create_profile_faculty_widget.dart' show CreateProfileFacultyWidget;
import 'package:flutter/material.dart';

class CreateProfileFacultyModel
    extends FlutterFlowModel<CreateProfileFacultyWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for Name widget.
  FocusNode? nameFocusNode;
  TextEditingController? nameController;
  String? Function(BuildContext, String?)? nameControllerValidator;
  String? _nameControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for Department widget.
  String? departmentValue;
  FormFieldController<String>? departmentValueController;
  // State field(s) for Course widget.
  String? courseValue;
  FormFieldController<String>? courseValueController;
  // State field(s) for SwitchListTile widget.
  bool? switchListTileValue;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    nameControllerValidator = _nameControllerValidator;
  }

  @override
  void dispose() {
    nameFocusNode?.dispose();
    nameController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
