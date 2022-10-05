import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../styles/constants.dart';

class TextInput extends StatefulWidget {
  TextInput(this.icon, this.label, this.validator, [this.obscureText = false])
      : super();
  final Icon icon;
  final String label;
  final bool obscureText;
  final FormFieldValidator<String> validator;

  @override
  State<TextInput> createState() => _TextInputState();
}

class _TextInputState extends State<TextInput> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: widget.validator,
      onChanged: (event) {
        if (kDebugMode) {
          print(event.characters);
        }
      },
      obscureText: widget.obscureText,
      autofocus: true,
      cursorColor: kMainTextColor,
      style: kLoginInputTextStyle,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.zero,
        hintText: widget.label,
        isDense: true,
        iconColor: kMainTextColor,
        border: InputBorder.none,
        icon: widget.icon,
      ),
    );
  }
}
