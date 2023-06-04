import 'package:flutter/material.dart';

class AddressTile extends StatelessWidget {
  const AddressTile({
    Key? key,
    required this.color,
    this.onTap,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  final String title;
  final String? subtitle;
  final Color color;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final subtitle = this.subtitle;
    return InkWell(
      onTap: onTap,
      child: ColoredBox(
        color: color,
        child: ListTile(
          title: Text(
            title,
          ),
          subtitle: subtitle != null
              ? Text(
                  subtitle,
                )
              : null,
        ),
      ),
    );
  }
}
