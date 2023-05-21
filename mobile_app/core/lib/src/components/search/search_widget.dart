import 'package:core/core.dart';
import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    final extraColors = Theme.of(context).extension<ExtraAppColors>();
    final extraFonts = Theme.of(context).extension<ExtraAppTypography>();

    final fill = extraColors?.surface ?? AppColor.gray;
    final borderColor = extraColors?.border ?? AppColor.black;
    final textColor = extraColors?.onSurface ?? AppColor.darkGray;

    final border = OutlineInputBorder(
      borderSide: BorderSide(
        width: 1,
        color: borderColor,
      ),
      borderRadius: BorderRadius.zero,
    );

    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16.0,
      ),
      child: TextField(
        controller: controller,
        style: extraFonts?.bodySmall.copyWith(
          color: textColor,
        ),
        decoration: InputDecoration(
          focusedBorder: border,
          focusedErrorBorder: border,
          disabledBorder: border,
          enabledBorder: border,
          border: border,
          fillColor: fill,
          filled: true,
          prefixIcon:  Icon(
            Icons.search,
            color: textColor,
          ),
          contentPadding: EdgeInsets.zero,
          hintText: 'ПОИСК',
        ),
      ),
    );
  }
}
