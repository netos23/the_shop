import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:the_store_app/service/service.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hintValue,
    required this.validatingController,
    this.phoneNumber = false,
  });

  final bool phoneNumber;
  final String hintValue;
  final TextValidatingController validatingController;

  @override
  Widget build(BuildContext context) {
    final fonts = Theme.of(context).textTheme;
    final extraFonts = Theme.of(context).extension<ExtraAppTypography>();
    final colors = Theme.of(context).colorScheme;

    debugPrint(hintValue);
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: TextFormField(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        // initialValue: initValue,
        style: fonts.bodyLarge,
        controller: validatingController.textEditingController,
        validator: validatingController.func,
        keyboardType: phoneNumber ? TextInputType.phone : TextInputType.text,
        decoration: InputDecoration(
          border: const OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.zero,
          ),
          errorStyle: extraFonts?.bodySmall.copyWith(color: colors.error),
          fillColor: colors.surfaceVariant,
          filled: true,
          contentPadding: const EdgeInsets.only(left: 20),
          hintText: hintValue,
        ),
      ),
    );
  }
}
