import 'dart:async';

import 'package:go_router/go_router.dart';
import 'package:mvvm_architecture/architecture/base_view_model.dart';
import 'package:mvvm_architecture/features/home/home_screen.dart';
import 'package:mvvm_architecture/services/state_service.dart';

import '../../../constants/numeric_constants.dart';

class SplashViewModel extends BaseViewModel {
  Timer? timer;

  @override
  void callDispose() {
    timer = null;
  }

  @override
  void callInitState() {
    timer = Timer(NumericConstants.splashDuration, () {
      StateService.context.go(HomeScreen.id);
    });
  }
}
