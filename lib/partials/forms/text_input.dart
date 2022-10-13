import 'package:flutter/material.dart';

import '../../styles/constants.dart';

class TextInput extends StatelessWidget {
  final Icon _icon;
  final String _hintText;
  final String _labelText;
  final bool _obscureText;
  final bool _autofocus;
  final FormFieldValidator<String> _validator;

  const TextInput(this._icon, this._hintText, this._labelText, this._validator,
      [this._obscureText = false, this._autofocus = true])
      : super();

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: _obscureText,
      autofocus: _autofocus,
      decoration: InputDecoration(
          icon: _icon,
          hintText: _hintText,
          isDense: true,
          hintStyle: kLoginInputTextStyle,
          labelText: _labelText,
          labelStyle: kLoginInputTextStyle,
          border: InputBorder.none),
      validator: _validator,
    );
  }
}
