import 'package:flutter/material.dart';
import 'package:the_store_app/screens/components/components.dart';

class CustomFormWidget extends StatefulWidget{

  const CustomFormWidget({
    super.key,
    required this.formFields,
    required this.submitText
  });

  final List<Widget> formFields;
  final String submitText;



  @override
  State<StatefulWidget> createState() {
    return _CustomFormWidgetState();
  }

}

class _CustomFormWidgetState extends State<CustomFormWidget> {

  final _formKey = GlobalKey<FormState>();





  @override
  Widget build(BuildContext context) {


    return Form(

      key: _formKey,
      child: Column(
        children: widget.formFields,
      ),
    );
  }
}