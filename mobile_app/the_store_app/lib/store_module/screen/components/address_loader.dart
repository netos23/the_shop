
import 'package:flutter/material.dart';

import '../../../internal/app.dart';

class AddressLoader extends StatelessWidget {
  const AddressLoader({
    super.key,
    required this.evenBackground,
    required this.oddBackground,
  });

  final Color evenBackground;
  final Color oddBackground;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return _AddressTileLoader(
          color: index.isEven ? evenBackground : oddBackground,
        );
      },
    );
  }
}

class _AddressTileLoader extends StatelessWidget {
  const _AddressTileLoader({
    required this.color,
  });

  final Color color;

  @override
  Widget build(BuildContext context) {
    final extraColors = Theme.of(context).extension<ExtraAppColors>()!;
    return ColoredBox(
      color: color,
      child: ListTile(
        title: Align(
          alignment: Alignment.centerLeft,
          child: SizedBox(
            height: 10,
            width: 100,
            child: ColoredBox(
              color: extraColors.onSurface.withOpacity(0.5),
            ),
          ),
        ),
        subtitle: Align(
          alignment: Alignment.centerLeft,
          child: SizedBox(
            height: 10,
            width: 150,
            child: ColoredBox(
              color: extraColors.onSurface.withOpacity(0.3),
            ),
          ),
        ),
      ),
    );
  }
}
