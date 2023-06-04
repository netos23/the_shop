import 'package:flutter/material.dart';

import 'persistence_stack.dart';

class PersistenceTabView extends StatelessWidget {
  const PersistenceTabView({
    Key? key,
    this.controller,
    required this.children,
  }) : super(key: key);

  final TabController? controller;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    final controller = this.controller ?? DefaultTabController.maybeOf(context);

    assert(() {
      if (controller == null) {
        throw FlutterError(
          'No TabController for $runtimeType.\n'
              'When creating a $runtimeType, you must either provide an explicit '
              'TabController using the "controller" property, or you must ensure that there '
              'is a DefaultTabController above the $runtimeType.\n'
              'In this case, there was neither an explicit controller nor a default controller.',
        );
      }
      return true;
    }());

    return AnimatedBuilder(
      animation: controller!,
      builder: (context, child) {
        return PersistenceStack(
          key: ValueKey(controller.hashCode),
          index: controller.index,
          children: children,
        );
      },
    );
  }
}
