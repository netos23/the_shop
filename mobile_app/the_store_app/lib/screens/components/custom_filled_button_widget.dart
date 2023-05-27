import 'package:core/core.dart';
import 'package:flutter/material.dart';

class CustomFilledButton extends StatelessWidget{

  final VoidCallback? onTap;
  final String text;

  const CustomFilledButton({Key? key, required this.onTap, required this.text})
  : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
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
            style: Theme.of(context).textTheme.labelMedium?.copyWith(color: Colors.white),
          ),
        ),
      ),
    );
  }

}