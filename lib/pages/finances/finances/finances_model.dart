import '/components/drawer_widget.dart';
import '/components/navbar_widget.dart';
import '/components/side_nav_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'finances_widget.dart' show FinancesWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';

class FinancesModel extends FlutterFlowModel<FinancesWidget> {
  ///  Local state fields for this page.

  int selectedPage = 1;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for sideNav component.
  late SideNavModel sideNavModel;
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
    navbarModel.dispose();
    drawerModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
