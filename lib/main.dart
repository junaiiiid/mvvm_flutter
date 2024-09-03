import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mvvm_architecture/services/dependency_injection/locator.dart';
import 'package:mvvm_architecture/services/route_service.dart';

import 'constants/numeric_constants.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupLocator();
  runApp(
    const ProviderScope(
      child: Start(),
    ),
  );
}

class Start extends StatelessWidget {
  const Start({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: NumericConstants.artBoardSize,
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (_, child) {
          return MaterialApp.router(
            routerConfig: RouteService.router,
            debugShowCheckedModeBanner: false,
          );
        });
  }
}
