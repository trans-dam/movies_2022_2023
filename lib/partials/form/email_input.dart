import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

import '../../styles/constants.dart';
import 'text_input.dart';

class EmailInput extends StatelessWidget {
  const EmailInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextInput(
        'Votre email',
        const Icon(
          Icons.mail,
          color: kMainTextColor,
        ), (value) {
      if (value == null || value.trim().isEmpty) {
        return 'Le champ «email» est obligatoire!';
      } else if (!EmailValidator.validate(value)) {
        return 'L’email n’est pas au bon format';
      }
    }, TextInputType.emailAddress);
  }
}
