import 'package:flutter/material.dart';
import 'package:movies/partials/form/text_input.dart';

import '../../styles/constants.dart';

class UserNameInput extends StatelessWidget {
  const UserNameInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextInput(
      const Icon(
        Icons.person,
        color: kMainTextColor,
      ),
      'Votre nom d’utilisateur',
      'unique.name',
      TextInputType.name,
          (value) {
        if (value == null || value.isEmpty) {
          return 'Le nom d’utilisateur doit être renseigné.';
        } else if (value.length < 2) {
          return 'Le nom d’utilisateur doit contenir au moins 2 caractères.';
        }
      },
    );
  }
}
