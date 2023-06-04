import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:the_store_app/store_module/entity/delivery/pickup_point.dart';

import 'pickup_point_tile.dart';

class PickupBottomSheet extends StatelessWidget {
  const PickupBottomSheet({
    super.key,
    required this.point,
  });

  final PickupPoint point;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 16.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            PickupPointTile(
              point: point,
              color: colors.background,
            ),
            FilledButton(
              onPressed: () {
                context.router.pop(point);
              },
              child: const Center(
                child: Text('ВЫБРАТЬ'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
