import '/flutter_flow/flutter_flow_util.dart';
import '/pages/student/components/side_nav/side_nav_widget.dart';
import 'photo_gallery_widget.dart' show PhotoGalleryWidget;
import 'package:flutter/material.dart';

class PhotoGalleryModel extends FlutterFlowModel<PhotoGalleryWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for sideNav component.
  late SideNavModel sideNavModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    sideNavModel = createModel(context, () => SideNavModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    sideNavModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
