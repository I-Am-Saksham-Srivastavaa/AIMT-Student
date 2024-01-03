import '/components/drawer_widget.dart';
import '/components/navbar_widget.dart';
import '/components/side_nav_widget.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'faculty_widget.dart' show FacultyWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class FacultyModel extends FlutterFlowModel<FacultyWidget> {
  ///  Local state fields for this page.

  int selectedPage = 2;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for sideNav component.
  late SideNavModel sideNavModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // State field(s) for ChoiceChips widget.
  List<String>? choiceChipsValues;
  FormFieldController<List<String>>? choiceChipsValueController;
  // Model for Navbar component.
  late NavbarModel navbarModel;
  // Model for Drawer component.
  late DrawerModel drawerModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    sideNavModel = createModel(context, () => SideNavModel());
    navbarModel = createModel(context, () => NavbarModel());
    drawerModel = createModel(context, () => DrawerModel());
  }

  void dispose() {
    unfocusNode.dispose();
    sideNavModel.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    navbarModel.dispose();
    drawerModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
