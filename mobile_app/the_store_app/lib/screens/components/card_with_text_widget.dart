import 'package:flutter/material.dart';

class CardWithText extends StatelessWidget {
  const CardWithText({
    Key? key,
    required this.text,
    required this.assetPath,
  }) : super(key: key);

  final String text;
  final String assetPath;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 300,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
            child: Image.asset(assetPath),
          ),
        ),
        Text(
          text,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }
}