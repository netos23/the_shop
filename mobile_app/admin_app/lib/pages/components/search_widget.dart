import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    const border = OutlineInputBorder(
      borderSide: BorderSide(
        width: 0,
        // color: borderColor,
      ),
      borderRadius: BorderRadius.all(Radius.circular(0)),
    );

    return TextField(
      controller: controller,
      // style: extraFonts?.bodySmall.copyWith(
      //   color: textColor,
      // ),
      decoration: const InputDecoration(
        focusedBorder: border,
        focusedErrorBorder: border,
        disabledBorder: border,
        enabledBorder: border,
        border: border,
        // fillColor: fill,
        filled: true,
        prefixIcon: Icon(
          Icons.search,
          // color: textColor,
        ),
        contentPadding: EdgeInsets.zero,
        hintText: 'ПОИСК',
      ),
    );
  }
}
