import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class StateService {
  StateService._();

  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  static BuildContext get context => navigatorKey.currentState!.context;

  static ChangeNotifierProvider<T> createProvider<T extends ChangeNotifier>(
      T Function() create) {
    return ChangeNotifierProvider<T>((ref) => create());
  }
}
