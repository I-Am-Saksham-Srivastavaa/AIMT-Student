import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _navOpen = prefs.getBool('ff_navOpen') ?? _navOpen;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  bool _navOpen = false;
  bool get navOpen => _navOpen;
  set navOpen(bool value) {
    _navOpen = value;
    prefs.setBool('ff_navOpen', value);
  }

  bool _IsHOD = false;
  bool get IsHOD => _IsHOD;
  set IsHOD(bool value) {
    _IsHOD = value;
  }

  bool _isFaculty = false;
  bool get isFaculty => _isFaculty;
  set isFaculty(bool value) {
    _isFaculty = value;
  }

  bool _isOptionsExpanded = false;
  bool get isOptionsExpanded => _isOptionsExpanded;
  set isOptionsExpanded(bool value) {
    _isOptionsExpanded = value;
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
