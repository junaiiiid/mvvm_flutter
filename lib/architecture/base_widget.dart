import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'base_view_model.dart';

abstract class BaseStatefulWidget extends ConsumerStatefulWidget {
  final BaseViewModel viewModel;
  final BuildMethod buildMethod;

  const BaseStatefulWidget({
    required this.viewModel,
    required this.buildMethod,
    super.key,
  });

  @override
  ConsumerState<BaseStatefulWidget> createState() => _BaseStatefulWidgetState();
}

class _BaseStatefulWidgetState extends ConsumerState<BaseStatefulWidget> {
  @override
  void initState() {
    super.initState();
    widget.viewModel.callInitState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    widget.viewModel.callDidChangeDependencies();
  }

  @override
  void dispose() {
    widget.viewModel.callDispose();
    super.dispose();
  }

  @override
  void deactivate() {
    widget.viewModel.callDeactivate();
    super.deactivate();
  }

  @override
  Widget build(BuildContext context) {
    return widget.buildMethod(context, ref);
  }
}

typedef BuildMethod = Widget Function(BuildContext context, WidgetRef ref);

