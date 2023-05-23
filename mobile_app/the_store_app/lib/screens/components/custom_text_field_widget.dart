
import 'package:flutter/material.dart';
import 'package:the_store_app/internal/service/service.dart';

class CustomTextField extends StatelessWidget{


  const CustomTextField({
    super.key,
    required this.hintText,
    required this.validatingController
  });

  final String hintText;
  final TextValidatingController validatingController;

  @override
  Widget build(BuildContext context) {


    final fonts = Theme.of(context).textTheme;

    final fill = Theme.of(context).colorScheme.surfaceVariant;
    final TextEditingController tx = TextEditingController();
    return ValueListenableBuilder(
        valueListenable: validatingController.textEditingController,
        builder: (context, TextEditingValue value, __){
        debugPrint("rebuild");
          return Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
            ),
            child: TextFormField(
              style: fonts.bodyLarge,
              controller: validatingController.textEditingController,
              validator: validatingController.func,
              decoration: InputDecoration(
                border: const OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.zero,
                ),
                errorText: validatingController.errorText,

                fillColor: fill,
                filled: true,
                contentPadding: const EdgeInsets.only(left: 20),
                hintText: hintText,
              ),
            ),
          );
        }

    );
  }



}