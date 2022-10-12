import 'package:flutter/material.dart';
import 'package:movies/styles/constants.dart';

import 'text_input.dart';

class PasswordInput extends StatelessWidget {
  const PasswordInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextInput(
        'Votre mot de passe',
        const Icon(
          Icons.password,
          color: kMainTextColor,
        ), (value) {
      if (value == null || value.trim().isEmpty) {
        return 'Le champ «mot de passe» est obligatoire!';
      } else if (value.length < 9) {
        return 'Ce mot de passe est trop court. (9 caractères)';
      }
    },TextInputType.text, true);
  }
}
