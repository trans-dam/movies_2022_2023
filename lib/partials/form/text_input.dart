import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../styles/constants.dart';

class TextInput extends StatelessWidget {
  TextInput(this._icon, this._labelText, this._hintText, this._keyboardType,
      this._validator,
      [this._obscureText = false])
      : super();
  final Icon _icon;
  final String _hintText;
  final String _labelText;
  final bool _obscureText;
  final TextInputType _keyboardType;
  final FormFieldValidator<String> _validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: _validator,
      keyboardType: _keyboardType,
      onChanged: (event) {
        if (kDebugMode) {
          print(event.characters);
        }
      },
      obscureText: _obscureText,
      autofocus: true,
      cursorColor: kMainTextColor,
      style: kLoginInputTextStyle,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.zero,
        hintText: _hintText,
        isDense: true,
        labelText: _labelText,
        labelStyle: kLoginInputTextStyle,
        iconColor: kMainTextColor,
        border: InputBorder.none,
        icon: _icon,
      ),
    );
  }
}
