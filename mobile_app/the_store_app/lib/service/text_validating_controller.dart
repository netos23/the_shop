import 'package:flutter/material.dart';

class TextValidatingController{

  final String? Function(String?) func;
  bool changed;

  TextEditingController textEditingController = TextEditingController();



  TextValidatingController({required this.func}):
  changed = false;



  String? get errorText{

    var text = textEditingController.value.text;

    debugPrint(text);
    return func(text);

  }

  void dispose(){
    textEditingController.dispose();
  }


}