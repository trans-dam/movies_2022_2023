import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../styles/constants.dart';

class TextInput extends StatelessWidget {
  const TextInput(
      this._hintText, this._icon, this._validator, this._keyboardType,
      [this._obscureText = false])
      : super();

  final String _hintText;
  final Icon _icon;
  final bool _obscureText;
  final TextInputType _keyboardType;
  final FormFieldValidator<String>? _validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: _keyboardType,
      validator: _validator,
      onChanged: (value) {
        if (kDebugMode) {
          print(value);
        }
      },
      obscureText: _obscureText,
      decoration: InputDecoration(
        border: InputBorder.none,
        contentPadding: EdgeInsets.zero,
        hintText: _hintText,
        isDense: true,
        iconColor: kMainTextColor,
        icon: _icon,
      ),
      cursorColor: kMainTextColor,
    );
  }
}
