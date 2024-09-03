import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mvvm_architecture/architecture/app_parent_widget.dart';
import 'package:mvvm_architecture/services/provider_service.dart';
import 'package:mvvm_architecture/theme/app_colors.dart';

class HomeScreen extends ConsumerWidget {
  static const String id = '/home';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModel = ref.watch(ProviderService.homeProvider);
    return AppParentWidget(
        viewModel: viewModel,
        buildMethod: (context, ref) {
          return Scaffold(
            backgroundColor: AppColors.teal,
            appBar: AppBar(
              backgroundColor: AppColors.black,
              title: Text(
                viewModel.homeModel.appBarTitle,
                style: const TextStyle(color: AppColors.white),
              ),
              centerTitle: true,
            ),
            body: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Card(
                    child: ListTile(
                      title: Text(viewModel.homeModel.title),
                      subtitle: Text(viewModel.homeModel.subtitle),
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
