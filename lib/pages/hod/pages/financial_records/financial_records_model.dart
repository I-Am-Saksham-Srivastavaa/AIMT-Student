import '/flutter_flow/flutter_flow_util.dart';
import '/pages/hod/components/balance_h_o_d/balance_h_o_d_widget.dart';
import '/pages/hod/components/nav_bar_h_o_d/nav_bar_h_o_d_widget.dart';
import '/pages/hod/components/side_nav_h_o_d/side_nav_h_o_d_widget.dart';
import 'financial_records_widget.dart' show FinancialRecordsWidget;
import 'package:flutter/material.dart';

class FinancialRecordsModel extends FlutterFlowModel<FinancialRecordsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for sideNavHOD component.
  late SideNavHODModel sideNavHODModel;
  // Model for BalanceHOD component.
  late BalanceHODModel balanceHODModel;
  // Model for NavBarHOD component.
  late NavBarHODModel navBarHODModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    sideNavHODModel = createModel(context, () => SideNavHODModel());
    balanceHODModel = createModel(context, () => BalanceHODModel());
    navBarHODModel = createModel(context, () => NavBarHODModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    sideNavHODModel.dispose();
    balanceHODModel.dispose();
    navBarHODModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
