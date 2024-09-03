import 'package:get_it/get_it.dart';
import 'package:mvvm_architecture/features/home/view_model/home_view_model.dart';
import 'package:mvvm_architecture/features/splash/view_model/splash_view_model.dart';

final GetIt locator = GetIt.instance;

Future<void> setupLocator() async{
  locator.registerLazySingleton<SplashViewModel>(() => SplashViewModel());
  locator.registerLazySingleton<HomeViewModel>(() => HomeViewModel());
}
