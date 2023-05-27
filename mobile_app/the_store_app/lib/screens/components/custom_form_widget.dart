import 'package:flutter/material.dart';
import 'package:the_store_app/screens/components/components.dart';

class CustomFormWidget extends StatefulWidget{

  const CustomFormWidget({
    super.key,
    required this.formFields,
    required this.submitText,
    required this.submitAction,

  });

  final List<Widget> formFields;
  final String submitText;
  final VoidCallback submitAction;



  @override
  State<StatefulWidget> createState() {
    return _CustomFormWidgetState();
  }

}

class _CustomFormWidgetState extends State<CustomFormWidget> {

  final _formKey = GlobalKey<FormState>();

  get formKey => _formKey;




  @override
  Widget build(BuildContext context) {


    final submitButton = SizedBox(
      height: 50,
      child: CustomFilledButton(
          onTap: (){
            if (_formKey.currentState!.validate()){
              widget.submitAction();
            }
          },
          text: widget.submitText
      ),
    );

    widget.formFields.add(submitButton);

    return Form(

      key: _formKey,
      child: Column(
        children: widget.formFields,
      ),
    );
  }
}