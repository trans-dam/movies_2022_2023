import 'package:flutter/material.dart';
import 'package:movies/partials/forms/text_input.dart';

import '../../styles/constants.dart';

class PasswordInput extends StatelessWidget {
  const PasswordInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextInput(
        const Icon(
          Icons.password,
          color: kMainTextColor,
        ),
        'votre mot de passe',
        'Mot de passe', (value) {
      if (value == null || value.trim().isEmpty) {
        return "Le mot de passe est obligatoire";
      }
    }, true);
  }
}
