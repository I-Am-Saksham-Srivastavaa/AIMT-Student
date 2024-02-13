import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'drawer_h_o_d_model.dart';
export 'drawer_h_o_d_model.dart';

class DrawerHODWidget extends StatefulWidget {
  const DrawerHODWidget({
    super.key,
    required this.selectedNav,
  });

  final int? selectedNav;

  @override
  State<DrawerHODWidget> createState() => _DrawerHODWidgetState();
}

class _DrawerHODWidgetState extends State<DrawerHODWidget> {
  late DrawerHODModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DrawerHODModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container();
  }
}
