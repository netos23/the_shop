import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:the_store_app/entity/delivery/pickup_point.dart';

class PickupPointTile extends StatelessWidget {
  const PickupPointTile({
    Key? key,
    required this.point,
    this.color,
    this.style,
    this.onTap,
  }) : super(key: key);

  final TextStyle? style;
  final PickupPoint point;
  final Color? color;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        color: color,
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        // height: 260,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              style: style,
              'Пункт Самовывоза\n',
            ),
            Text(
              point.shopAddress,
              style: style?.copyWith(fontWeight: FontWeight.w700),
            ),
            Text(
              point.shopName,
              style: style,
            ),
            Text(
              point.shopPhone,
              style: style,
            ),
            Text(
              point.shopWorkHours,
              style: style,
            ),
          ],
        ),
      ),
    );
  }
}
