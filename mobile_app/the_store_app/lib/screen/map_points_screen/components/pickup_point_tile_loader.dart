import 'package:core/core.dart';
import 'package:flutter/material.dart';

class PickupPointTileLoader extends StatelessWidget {
  const PickupPointTileLoader({
    Key? key,
    required this.color,
  }) : super(key: key);

  final Color color;

  @override
  Widget build(BuildContext context) {
    final extraColors = Theme.of(context).extension<ExtraAppColors>()!;
    return Container(
      color: color,
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      height: 150,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 15,
            width: 200,
            child: ColoredBox(
              color: extraColors.onSurface.withOpacity(0.5),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 10,
            width: 150,
            child: ColoredBox(
              color: extraColors.onSurface.withOpacity(0.5),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          SizedBox(
            height: 10,
            width: 100,
            child: ColoredBox(
              color: extraColors.onSurface.withOpacity(0.5),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          SizedBox(
            height: 10,
            width: 90,
            child: ColoredBox(
              color: extraColors.onSurface.withOpacity(0.5),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          SizedBox(
            height: 10,
            width: 80,
            child: ColoredBox(
              color: extraColors.onSurface.withOpacity(0.5),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          SizedBox(
            height: 10,
            width: 90,
            child: ColoredBox(
              color: extraColors.onSurface.withOpacity(0.5),
            ),
          ),
        ],
      ),
    );
  }
}
