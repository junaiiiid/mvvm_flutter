import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mvvm_architecture/features/home/home_screen.dart';
import 'package:mvvm_architecture/features/splash/splash_screen.dart';
import 'package:mvvm_architecture/services/state_service.dart';

class RouteService {
  RouteService._();

  static GoRouter router = GoRouter(
    navigatorKey: StateService.navigatorKey,
    routes: [
      RouteNames.getRoute(
        routeName: SplashScreen.id,
        page: const SplashScreen(),
      ),
      RouteNames.getRoute(
        routeName: HomeScreen.id,
        page: const HomeScreen(),
      ),
    ],
  );
}

class RouteNames {
  RouteNames._();
  static GoRoute getRoute({required String routeName, required Widget page}) {
    return GoRoute(
      path: routeName,
      builder: (context, state) => page,
    );
  }
}
