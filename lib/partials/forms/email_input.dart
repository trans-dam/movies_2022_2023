import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:movies/partials/forms/text_input.dart';

import '../../styles/constants.dart';

class EmailInput extends StatelessWidget {
  const EmailInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextInput(
        const Icon(
          Icons.mail,
          color: kMainTextColor,
        ),
        'votre@mail.com',
        'email', (value) {
      if (value == null || value.trim().isEmpty) {
        return "L’email est obligatoire";
      } else if (!EmailValidator.validate(value)) {
        return "L’email n’est pas au bon format.";
      }
    });
  }
}
