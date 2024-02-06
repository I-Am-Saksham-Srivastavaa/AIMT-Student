import '/flutter_flow/flutter_flow_util.dart';
import '/pages/student/components/side_nav/side_nav_widget.dart';
import '/pages/student/components/transaction_history/transaction_history_widget.dart';
import 'fee_record_widget.dart' show FeeRecordWidget;
import 'package:flutter/material.dart';

class FeeRecordModel extends FlutterFlowModel<FeeRecordWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for sideNav component.
  late SideNavModel sideNavModel;
  // Model for TransactionHistory component.
  late TransactionHistoryModel transactionHistoryModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    sideNavModel = createModel(context, () => SideNavModel());
    transactionHistoryModel =
        createModel(context, () => TransactionHistoryModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    sideNavModel.dispose();
    transactionHistoryModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
