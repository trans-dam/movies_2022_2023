import 'package:flutter/material.dart';

import '../../styles/constants.dart';

class TextInput extends StatelessWidget {
  final Icon _icon;
  final String _hintText;
  final String _labelText;
  final bool _obscureText;

  const TextInput(this._icon, this._hintText, this._labelText,
      [this._obscureText = false])
      : super();

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: _obscureText,
      decoration: InputDecoration(
          icon: _icon,
          hintText: _hintText,
          hintStyle: kLoginInputTextStyle,
          labelText: _labelText,
          labelStyle: kLoginInputTextStyle,
          border: InputBorder.none),
      validator: (String? value) {},
    );
  }
}
