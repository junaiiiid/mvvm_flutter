import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mvvm_architecture/architecture/app_parent_widget.dart';
import 'package:mvvm_architecture/services/provider_service.dart';

import '../../theme/app_colors.dart';

class SplashScreen extends ConsumerWidget {
  static const String id = "/";
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModel = ref.watch(ProviderService.splashProvider);
    return AppParentWidget(
        viewModel: viewModel,
        buildMethod: (context, ref) {
          return Scaffold(
            backgroundColor: AppColors.black,
            body: Center(
              child: SvgPicture.asset('assets/vectors/logo_dark.svg'),
            ),
          );
        });
  }
}
