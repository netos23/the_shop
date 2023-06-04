import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:the_store_app/internal/logger.dart';

class TextValidatingController{

  final String? Function(String?) func;


  TextEditingController textEditingController = TextEditingController();



  TextValidatingController({required this.func});



  void dispose(){
    textEditingController.dispose();
  }


}