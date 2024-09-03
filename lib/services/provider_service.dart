import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mvvm_architecture/features/home/view_model/home_view_model.dart';
import 'package:mvvm_architecture/services/state_service.dart';

import '../features/splash/view_model/splash_view_model.dart';

class ProviderService {
  ProviderService._();

  static ChangeNotifierProvider<HomeViewModel> homeProvider =
      StateService.createProvider(() => HomeViewModel());
  static ChangeNotifierProvider<SplashViewModel> splashProvider =
      StateService.createProvider(() => SplashViewModel());
}
