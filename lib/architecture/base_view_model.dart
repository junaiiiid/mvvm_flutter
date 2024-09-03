import 'package:flutter/material.dart';
import 'dart:developer' as dev;

abstract class BaseViewModel extends ChangeNotifier {
  void callCreateState() {
    dev.log("callCreateState");
  }

  void callInitState();

  void callDidChangeDependencies() {
    dev.log("callDidChangeDependencies");
  }

  void callBuild() {
    dev.log("callBuild");
  }

  void callDidUpdateWidget() {
    dev.log("callDidUpdateWidget");
  }

  void callSetState() {
    dev.log("callSetState");
  }

  void callDeactivate() {
    dev.log("callDeactivate");
  }

  void callDispose();

  void setState() {
    notifyListeners();
  }

  Future<void> refresh() async {
    dev.log("call Refresh");
  }
}
