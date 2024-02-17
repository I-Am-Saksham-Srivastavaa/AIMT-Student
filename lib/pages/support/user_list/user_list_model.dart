import '/flutter_flow/flutter_flow_util.dart';
import '/pages/support/user_list_small/user_list_small_widget.dart';
import 'user_list_widget.dart' show UserListWidget;
import 'package:flutter/material.dart';

class UserListModel extends FlutterFlowModel<UserListWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for user_ListSmall component.
  late UserListSmallModel userListSmallModel;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered = false;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    userListSmallModel = createModel(context, () => UserListSmallModel());
  }

  @override
  void dispose() {
    userListSmallModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
