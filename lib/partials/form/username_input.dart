import 'package:flutter/material.dart';
import 'package:movies/styles/constants.dart';

import 'text_input.dart';

class UserNameInput extends StatelessWidget {
  const UserNameInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextInput(
        'Nom d’utilisateur',
        const Icon(
          Icons.person,
          color: kMainTextColor,
        ), (value) {
      if (value == null || value.trim().isEmpty) {
        return 'Le champ «Nom d’utilisateur» est obligatoire!';
      } else if (value.length < 2) {
        return 'Le nom d’utilisateur est trop court. (2 caractères)';
      }
    }, TextInputType.text);
  }
}
