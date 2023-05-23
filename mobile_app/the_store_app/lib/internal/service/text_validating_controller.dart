import 'package:flutter/material.dart';

class TextValidatingController{

  final String? Function(String?) func;

  TextEditingController textEditingController = TextEditingController();

  TextValidatingController({required this.func});



  String? get errorText{

    var text = textEditingController.value.text;
    debugPrint(text);
    return func(text);
  }

  void dispose(){
    textEditingController.dispose();
  }
}