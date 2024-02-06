import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'create_profile_widget.dart' show CreateProfileWidget;
import 'package:flutter/material.dart';

class CreateProfileModel extends FlutterFlowModel<CreateProfileWidget> {
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

  // State field(s) for Year widget.
  String? yearValue;
  FormFieldController<String>? yearValueController;
  // State field(s) for Course widget.
  String? courseValue;
  FormFieldController<String>? courseValueController;
  // State field(s) for RolNo widget.
  FocusNode? rolNoFocusNode;
  TextEditingController? rolNoController;
  String? Function(BuildContext, String?)? rolNoControllerValidator;
  String? _rolNoControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length < 8) {
      return 'Requires at least 8 characters.';
    }
    if (val.length > 12) {
      return 'Maximum 12 characters allowed, currently ${val.length}.';
    }

    return null;
  }

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    nameControllerValidator = _nameControllerValidator;
    rolNoControllerValidator = _rolNoControllerValidator;
  }

  @override
  void dispose() {
    nameFocusNode?.dispose();
    nameController?.dispose();

    rolNoFocusNode?.dispose();
    rolNoController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
