import 'package:flutter/material.dart';

class PersistenceStack extends StatelessWidget {
  const PersistenceStack({
    Key? key,
    required this.children,
    required this.index,
  }) : super(key: key);

  final int index;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        for (int i = 0; i < children.length; i++)
          Positioned.fill(
            key: ValueKey('Position-$i'),
            child: Visibility(
              key: ValueKey('Visibility-$i'),
              maintainState: true,
              maintainSize: true,
              maintainAnimation: true,
              visible: index == i,
              child: children[i],
            ),
          ),
      ],
    );
  }
}
