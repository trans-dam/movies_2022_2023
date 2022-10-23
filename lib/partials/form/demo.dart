import 'package:flutter/material.dart';
import 'package:movies/styles/constants.dart';

class Demo extends StatelessWidget {
  final FormFieldValidator<String> validator;
  final bool obscureText;

  const Demo({required this.validator, this.obscureText = false, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        validator: validator,
        obscureText: obscureText,
        decoration: const InputDecoration(
          border: InputBorder.none,
          labelText: "Mot de passe",
          labelStyle: kLoginInputTextStyle,
          icon: Icon(
            Icons.password,
            color: kMainTextColor,
          ),
        ));
  }
}
