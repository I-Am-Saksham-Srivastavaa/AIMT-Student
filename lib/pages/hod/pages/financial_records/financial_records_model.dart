import '/flutter_flow/flutter_flow_util.dart';
import '/pages/hod/components/side_nav_h_o_d/side_nav_h_o_d_widget.dart';
import '/pages/hod/components/transaction_history_h_o_d/transaction_history_h_o_d_widget.dart';
import 'financial_records_widget.dart' show FinancialRecordsWidget;
import 'package:flutter/material.dart';

class FinancialRecordsModel extends FlutterFlowModel<FinancialRecordsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for sideNavHOD component.
  late SideNavHODModel sideNavHODModel;
  // Model for TransactionHistoryHOD component.
  late TransactionHistoryHODModel transactionHistoryHODModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    sideNavHODModel = createModel(context, () => SideNavHODModel());
    transactionHistoryHODModel =
        createModel(context, () => TransactionHistoryHODModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    sideNavHODModel.dispose();
    transactionHistoryHODModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
