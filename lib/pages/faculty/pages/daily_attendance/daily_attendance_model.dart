import '/components/student_card/student_card_widget.dart';
import '/components/student_card_back/student_card_back_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/faculty/components/nav_bar_faculty/nav_bar_faculty_widget.dart';
import '/pages/faculty/components/side_nav_faculty/side_nav_faculty_widget.dart';
import 'daily_attendance_widget.dart' show DailyAttendanceWidget;
import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';

class DailyAttendanceModel extends FlutterFlowModel<DailyAttendanceWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for sideNavFaculty component.
  late SideNavFacultyModel sideNavFacultyModel;
  // State field(s) for SwipeableStack widget.
  late CardSwiperController swipeableStackController;
  // Model for StudentCard component.
  late StudentCardModel studentCardModel1;
  // Model for StudentCardBack component.
  late StudentCardBackModel studentCardBackModel1;
  // Model for StudentCard component.
  late StudentCardModel studentCardModel2;
  // Model for StudentCardBack component.
  late StudentCardBackModel studentCardBackModel2;
  // Model for StudentCard component.
  late StudentCardModel studentCardModel3;
  // Model for StudentCardBack component.
  late StudentCardBackModel studentCardBackModel3;
  // Model for StudentCard component.
  late StudentCardModel studentCardModel4;
  // Model for StudentCardBack component.
  late StudentCardBackModel studentCardBackModel4;
  // Model for StudentCard component.
  late StudentCardModel studentCardModel5;
  // Model for StudentCardBack component.
  late StudentCardBackModel studentCardBackModel5;
  // Model for StudentCard component.
  late StudentCardModel studentCardModel6;
  // Model for StudentCardBack component.
  late StudentCardBackModel studentCardBackModel6;
  // Model for StudentCard component.
  late StudentCardModel studentCardModel7;
  // Model for StudentCardBack component.
  late StudentCardBackModel studentCardBackModel7;
  // Model for StudentCard component.
  late StudentCardModel studentCardModel8;
  // Model for StudentCardBack component.
  late StudentCardBackModel studentCardBackModel8;
  // Model for StudentCard component.
  late StudentCardModel studentCardModel9;
  // Model for StudentCardBack component.
  late StudentCardBackModel studentCardBackModel9;
  // Model for StudentCard component.
  late StudentCardModel studentCardModel10;
  // Model for StudentCardBack component.
  late StudentCardBackModel studentCardBackModel10;
  // Model for NavBarFaculty component.
  late NavBarFacultyModel navBarFacultyModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    sideNavFacultyModel = createModel(context, () => SideNavFacultyModel());
    swipeableStackController = CardSwiperController();
    studentCardModel1 = createModel(context, () => StudentCardModel());
    studentCardBackModel1 = createModel(context, () => StudentCardBackModel());
    studentCardModel2 = createModel(context, () => StudentCardModel());
    studentCardBackModel2 = createModel(context, () => StudentCardBackModel());
    studentCardModel3 = createModel(context, () => StudentCardModel());
    studentCardBackModel3 = createModel(context, () => StudentCardBackModel());
    studentCardModel4 = createModel(context, () => StudentCardModel());
    studentCardBackModel4 = createModel(context, () => StudentCardBackModel());
    studentCardModel5 = createModel(context, () => StudentCardModel());
    studentCardBackModel5 = createModel(context, () => StudentCardBackModel());
    studentCardModel6 = createModel(context, () => StudentCardModel());
    studentCardBackModel6 = createModel(context, () => StudentCardBackModel());
    studentCardModel7 = createModel(context, () => StudentCardModel());
    studentCardBackModel7 = createModel(context, () => StudentCardBackModel());
    studentCardModel8 = createModel(context, () => StudentCardModel());
    studentCardBackModel8 = createModel(context, () => StudentCardBackModel());
    studentCardModel9 = createModel(context, () => StudentCardModel());
    studentCardBackModel9 = createModel(context, () => StudentCardBackModel());
    studentCardModel10 = createModel(context, () => StudentCardModel());
    studentCardBackModel10 = createModel(context, () => StudentCardBackModel());
    navBarFacultyModel = createModel(context, () => NavBarFacultyModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    sideNavFacultyModel.dispose();
    studentCardModel1.dispose();
    studentCardBackModel1.dispose();
    studentCardModel2.dispose();
    studentCardBackModel2.dispose();
    studentCardModel3.dispose();
    studentCardBackModel3.dispose();
    studentCardModel4.dispose();
    studentCardBackModel4.dispose();
    studentCardModel5.dispose();
    studentCardBackModel5.dispose();
    studentCardModel6.dispose();
    studentCardBackModel6.dispose();
    studentCardModel7.dispose();
    studentCardBackModel7.dispose();
    studentCardModel8.dispose();
    studentCardBackModel8.dispose();
    studentCardModel9.dispose();
    studentCardBackModel9.dispose();
    studentCardModel10.dispose();
    studentCardBackModel10.dispose();
    navBarFacultyModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
