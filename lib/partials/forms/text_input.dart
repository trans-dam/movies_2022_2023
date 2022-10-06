import 'package:flutter/material.dart';

import '../../styles/constants.dart';

class TextInput extends StatelessWidget {
  TextInput(this._icon,this._hintText,this._labelText) : super();

  final Icon _icon;
  final String _hintText;
  final String _labelText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
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
