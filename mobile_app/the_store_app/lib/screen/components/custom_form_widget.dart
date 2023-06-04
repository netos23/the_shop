import 'package:flutter/material.dart';

class CustomFormWidget extends StatefulWidget {
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
      child: FilledButton(
        onPressed: () {
          if (_formKey.currentState!.validate()) {
            widget.submitAction();
          }
        },
        child: Text(widget.submitText),
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
