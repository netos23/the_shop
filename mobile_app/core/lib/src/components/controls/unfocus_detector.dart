import 'package:flutter/material.dart';

class UnFocusDetector extends StatelessWidget {
  const UnFocusDetector({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: FocusScope.of(context).unfocus,
      child: child,
    );
  }
}
