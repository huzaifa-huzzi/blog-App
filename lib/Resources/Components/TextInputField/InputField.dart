import 'package:flutter/material.dart';


class InputField extends StatelessWidget {
  final TextEditingController myController;
  final FocusNode focusNode;
  final FormFieldSetter onFieldSubmitted;
  final FormFieldValidator onValidator;
  final TextInputType keyboardType;
  final String hint;
  final bool obsecureText;
  final bool enable;
  final IconData icon;

  const InputField({super.key,
  required this.myController,
  this.enable = true,
  required this.focusNode,
  required this.onFieldSubmitted,
  required this.obsecureText,
  required this.hint,
  required this.keyboardType,
  required this.onValidator,
  required this.icon



  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: myController,
      obscureText: obsecureText,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        hintText: hint,
        prefixIcon: Icon(icon),

      ),
      focusNode: focusNode,
      onFieldSubmitted: onFieldSubmitted,
      validator: onValidator,
      enabled: enable,
    );
  }
}
