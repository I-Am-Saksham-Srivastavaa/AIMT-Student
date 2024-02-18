import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '/auth/base_auth_user_provider.dart';

import '/index.dart';
import '/flutter_flow/flutter_flow_util.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  BaseAuthUser? initialUser;
  BaseAuthUser? user;
  bool showSplashImage = true;
  String? _redirectLocation;

  /// Determines whether the app will refresh and build again when a sign
  /// in or sign out happens. This is useful when the app is launched or
  /// on an unexpected logout. However, this must be turned off when we
  /// intend to sign in/out and then navigate or perform any actions after.
  /// Otherwise, this will trigger a refresh and interrupt the action(s).
  bool notifyOnAuthChange = true;

  bool get loading => user == null || showSplashImage;
  bool get loggedIn => user?.loggedIn ?? false;
  bool get initiallyLoggedIn => initialUser?.loggedIn ?? false;
  bool get shouldRedirect => loggedIn && _redirectLocation != null;

  String getRedirectLocation() => _redirectLocation!;
  bool hasRedirect() => _redirectLocation != null;
  void setRedirectLocationIfUnset(String loc) => _redirectLocation ??= loc;
  void clearRedirectLocation() => _redirectLocation = null;

  /// Mark as not needing to notify on a sign in / out when we intend
  /// to perform subsequent actions (such as navigation) afterwards.
  void updateNotifyOnAuthChange(bool notify) => notifyOnAuthChange = notify;

  void update(BaseAuthUser newUser) {
    final shouldUpdate =
        user?.uid == null || newUser.uid == null || user?.uid != newUser.uid;
    initialUser ??= newUser;
    user = newUser;
    // Refresh the app on auth change unless explicitly marked otherwise.
    // No need to update unless the user has changed.
    if (notifyOnAuthChange && shouldUpdate) {
      notifyListeners();
    }
    // Once again mark the notifier as needing to update on auth change
    // (in order to catch sign in / out events).
    updateNotifyOnAuthChange(true);
  }

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      errorBuilder: (context, state) =>
          appStateNotifier.loggedIn ? const DashboardWidget() : const SplashWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) =>
              appStateNotifier.loggedIn ? const DashboardWidget() : const SplashWidget(),
        ),
        FFRoute(
          name: 'Resources',
          path: '/resources',
          builder: (context, params) => const ResourcesWidget(),
        ),
        FFRoute(
          name: 'StudentList',
          path: '/studentList',
          requireAuth: true,
          builder: (context, params) => const StudentListWidget(),
        ),
        FFRoute(
          name: 'Settings',
          path: '/settings',
          requireAuth: true,
          builder: (context, params) => const SettingsWidget(),
        ),
        FFRoute(
          name: 'Dashboard',
          path: '/dashboard',
          requireAuth: true,
          builder: (context, params) => const DashboardWidget(),
        ),
        FFRoute(
          name: 'CreateAccount',
          path: '/createAccount',
          builder: (context, params) => const CreateAccountWidget(),
        ),
        FFRoute(
          name: 'Login',
          path: '/login',
          builder: (context, params) => const LoginWidget(),
        ),
        FFRoute(
          name: 'CreateProfileFaculty',
          path: '/createProfileFaculty',
          requireAuth: true,
          builder: (context, params) => const CreateProfileFacultyWidget(),
        ),
        FFRoute(
          name: 'ForgotPassword',
          path: '/forgotPassword',
          requireAuth: true,
          builder: (context, params) => const ForgotPasswordWidget(),
        ),
        FFRoute(
          name: 'Splash',
          path: '/splash',
          builder: (context, params) => const SplashWidget(),
        ),
        FFRoute(
          name: 'Academics',
          path: '/academics',
          requireAuth: true,
          builder: (context, params) => const AcademicsWidget(),
        ),
        FFRoute(
          name: 'CreateProfile',
          path: '/createProfile',
          requireAuth: true,
          builder: (context, params) => const CreateProfileWidget(),
        ),
        FFRoute(
          name: 'DailyAttendance',
          path: '/dailyAttendance',
          requireAuth: true,
          builder: (context, params) => const DailyAttendanceWidget(),
        ),
        FFRoute(
          name: 'DashboardHOD',
          path: '/dashboardHOD',
          requireAuth: true,
          builder: (context, params) => const DashboardHODWidget(),
        ),
        FFRoute(
          name: 'SettingsFaculty',
          path: '/settingsFaculty',
          requireAuth: true,
          builder: (context, params) => const SettingsFacultyWidget(),
        ),
        FFRoute(
          name: 'SettingHOD',
          path: '/settingHOD',
          requireAuth: true,
          builder: (context, params) => const SettingHODWidget(),
        ),
        FFRoute(
          name: 'StudentDetails',
          path: '/studentDetails',
          requireAuth: true,
          builder: (context, params) => const StudentDetailsWidget(),
        ),
        FFRoute(
          name: 'Profile',
          path: '/profile',
          requireAuth: true,
          builder: (context, params) => const ProfileWidget(),
        ),
        FFRoute(
          name: 'Faculty',
          path: '/Faculty',
          requireAuth: true,
          builder: (context, params) => const FacultyWidget(),
        ),
        FFRoute(
          name: 'AcademicRecord',
          path: '/academicRecord',
          requireAuth: true,
          builder: (context, params) => const AcademicRecordWidget(),
        ),
        FFRoute(
          name: 'AttendanceSummary',
          path: '/attendanceSummary',
          requireAuth: true,
          builder: (context, params) => const AttendanceSummaryWidget(),
        ),
        FFRoute(
          name: 'FeeRecord',
          path: '/feeRecord',
          requireAuth: true,
          builder: (context, params) => const FeeRecordWidget(),
        ),
        FFRoute(
          name: 'AppAndServices',
          path: '/appAndServices',
          requireAuth: true,
          builder: (context, params) => const AppAndServicesWidget(),
        ),
        FFRoute(
          name: 'ResourcesFaculty',
          path: '/resourcesFaculty',
          builder: (context, params) => const ResourcesFacultyWidget(),
        ),
        FFRoute(
          name: 'ResourcesHOD',
          path: '/resourcesHOD',
          builder: (context, params) => const ResourcesHODWidget(),
        ),
        FFRoute(
          name: 'PhotoGallery',
          path: '/photoGallery',
          requireAuth: true,
          builder: (context, params) => const PhotoGalleryWidget(),
        ),
        FFRoute(
          name: 'AcademicRecords',
          path: '/academicRecords',
          requireAuth: true,
          builder: (context, params) => const AcademicRecordsWidget(),
        ),
        FFRoute(
          name: 'AttendanceRecord',
          path: '/attendanceRecord',
          requireAuth: true,
          builder: (context, params) => const AttendanceRecordWidget(),
        ),
        FFRoute(
          name: 'FinancialRecord',
          path: '/financialRecord',
          requireAuth: true,
          builder: (context, params) => const FinancialRecordWidget(),
        ),
        FFRoute(
          name: 'Gallery',
          path: '/gallery',
          requireAuth: true,
          builder: (context, params) => const GalleryWidget(),
        ),
        FFRoute(
          name: 'AppsAndServices',
          path: '/appsAndServices',
          requireAuth: true,
          builder: (context, params) => const AppsAndServicesWidget(),
        ),
        FFRoute(
          name: 'AppsAndService',
          path: '/appsAndService',
          requireAuth: true,
          builder: (context, params) => const AppsAndServiceWidget(),
        ),
        FFRoute(
          name: 'AttendanceRecords',
          path: '/attendanceRecords',
          requireAuth: true,
          builder: (context, params) => const AttendanceRecordsWidget(),
        ),
        FFRoute(
          name: 'FinancialRecords',
          path: '/financialRecords',
          requireAuth: true,
          builder: (context, params) => const FinancialRecordsWidget(),
        ),
        FFRoute(
          name: 'ImageGallery',
          path: '/imageGallery',
          requireAuth: true,
          builder: (context, params) => const ImageGalleryWidget(),
        ),
        FFRoute(
          name: 'StudentsList',
          path: '/StudentsList',
          requireAuth: true,
          builder: (context, params) => const StudentsListWidget(),
        ),
        FFRoute(
          name: 'FacultyList',
          path: '/FacultiesList',
          requireAuth: true,
          builder: (context, params) => const FacultyListWidget(),
        ),
        FFRoute(
          name: 'SupportFaculty',
          path: '/supportFaculty',
          requireAuth: true,
          builder: (context, params) => const SupportFacultyWidget(),
        ),
        FFRoute(
          name: 'NewPageHOD',
          path: '/newPageHOD',
          requireAuth: true,
          builder: (context, params) => const NewPageHODWidget(),
        ),
        FFRoute(
          name: 'LoginFaculty',
          path: '/loginFaculty',
          builder: (context, params) => const LoginFacultyWidget(),
        ),
        FFRoute(
          name: 'LoginHOD',
          path: '/loginHOD',
          builder: (context, params) => const LoginHODWidget(),
        ),
        FFRoute(
          name: 'AboutApp',
          path: '/aboutApp',
          requireAuth: true,
          builder: (context, params) => const AboutAppWidget(),
        ),
        FFRoute(
          name: 'AboutDeveloper',
          path: '/aboutDeveloper',
          requireAuth: true,
          builder: (context, params) => const AboutDeveloperWidget(),
        ),
        FFRoute(
          name: 'TermsAndConditions',
          path: '/termsAndConditions',
          requireAuth: true,
          builder: (context, params) => const TermsAndConditionsWidget(),
        ),
        FFRoute(
          name: 'Support',
          path: '/support',
          requireAuth: true,
          builder: (context, params) => const SupportWidget(),
        ),
        FFRoute(
          name: 'SupportHOD',
          path: '/supportHOD',
          requireAuth: true,
          builder: (context, params) => const SupportHODWidget(),
        ),
        FFRoute(
          name: 'Grievances',
          path: '/grievances',
          requireAuth: true,
          builder: (context, params) => const GrievancesWidget(),
        ),
        FFRoute(
          name: 'GrievancesFaculty',
          path: '/grievancesFaculty',
          requireAuth: true,
          builder: (context, params) => const GrievancesFacultyWidget(),
        ),
        FFRoute(
          name: 'GrievancesHOD',
          path: '/grievancesHOD',
          requireAuth: true,
          builder: (context, params) => const GrievancesHODWidget(),
        ),
        FFRoute(
          name: 'FacultyDetails',
          path: '/facultyDetails',
          requireAuth: true,
          builder: (context, params) => const FacultyDetailsWidget(),
        ),
        FFRoute(
          name: 'FacultyProfile',
          path: '/facultyProfile',
          requireAuth: true,
          builder: (context, params) => const FacultyProfileWidget(),
        ),
        FFRoute(
          name: 'ProfileHOD',
          path: '/profileHOD',
          requireAuth: true,
          builder: (context, params) => const ProfileHODWidget(),
        ),
        FFRoute(
          name: 'DashboardFaculty',
          path: '/dashboardFaculty',
          requireAuth: true,
          builder: (context, params) => const DashboardFacultyWidget(),
        )
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
      observers: [routeObserver],
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void goNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : goNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void pushNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : pushNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension GoRouterExtensions on GoRouter {
  AppStateNotifier get appState => AppStateNotifier.instance;
  void prepareAuthEvent([bool ignoreRedirect = false]) =>
      appState.hasRedirect() && !ignoreRedirect
          ? null
          : appState.updateNotifyOnAuthChange(false);
  bool shouldRedirect(bool ignoreRedirect) =>
      !ignoreRedirect && appState.hasRedirect();
  void clearRedirectLocation() => appState.clearRedirectLocation();
  void setRedirectLocationIfUnset(String location) =>
      appState.updateNotifyOnAuthChange(false);
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.extraMap.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, [
    bool isList = false,
  ]) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(
      param,
      type,
      isList,
    );
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        redirect: (context, state) {
          if (appStateNotifier.shouldRedirect) {
            final redirectLocation = appStateNotifier.getRedirectLocation();
            appStateNotifier.clearRedirectLocation();
            return redirectLocation;
          }

          if (requireAuth && !appStateNotifier.loggedIn) {
            appStateNotifier.setRedirectLocationIfUnset(state.location);
            return '/splash';
          }
          return null;
        },
        pageBuilder: (context, state) {
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = appStateNotifier.loading
              ? isWeb
                  ? Container()
                  : Container(
                      color: Colors.white,
                      child: Image.asset(
                        'assets/images/Social_Share_Image.png',
                        fit: BoxFit.scaleDown,
                      ),
                    )
              : page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).buildTransitions(
                    context,
                    animation,
                    secondaryAnimation,
                    child,
                  ),
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => const TransitionInfo(hasTransition: false);
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouter.of(context).location;
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}
