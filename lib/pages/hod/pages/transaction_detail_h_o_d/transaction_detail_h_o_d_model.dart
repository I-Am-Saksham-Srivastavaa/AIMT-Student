import '/flutter_flow/flutter_flow_util.dart';
import '/pages/hod/components/side_nav_h_o_d/side_nav_h_o_d_widget.dart';
import 'transaction_detail_h_o_d_widget.dart' show TransactionDetailHODWidget;
import 'package:flutter/material.dart';

class TransactionDetailHODModel
    extends FlutterFlowModel<TransactionDetailHODWidget> {
  ///  Local state fields for this page.

  int selectedPage = 1;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for sideNavHOD component.
  late SideNavHODModel sideNavHODModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    sideNavHODModel = createModel(context, () => SideNavHODModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    sideNavHODModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
