import 'package:core/core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyFilledButton extends StatelessWidget{

  final VoidCallback? onTap;
  final String text;

  const MyFilledButton({Key? key, required this.onTap, required this.text})
  : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: FilledButton(
        style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                const RoundedRectangleBorder(
                  borderRadius: BorderRadius.zero,
                )
            )
        ),
        onPressed: onTap,
        child: Center(
          child: Text(
            text,
            style: AppTypography.mediumBodySmallWhite,
          ),
        ),
      ),
    );
  }

}