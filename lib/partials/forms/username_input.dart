import 'package:flutter/material.dart';
import 'package:movies/partials/forms/text_input.dart';

import '../../styles/constants.dart';

class UsernameInput extends StatelessWidget {
  const UsernameInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextInput(
        const Icon(
          Icons.person,
          color: kMainTextColor,
        ),
        'Nom.Prénom',
        'Nom d’utilisateur', (value) {
      if (value == null || value.trim().isEmpty) {
        return "Le nom d’utilisateur est obligatoire";
      } else if (value.trim().length<2) {
        return "Le nom d’utilisateur est trop court";
      }
    });
  }
}
