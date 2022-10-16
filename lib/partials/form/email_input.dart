import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:movies/partials/form/text_input.dart';

@immutable
class EmailInput extends StatelessWidget {
  const EmailInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextInput(
      icon: Icons.mail,
      labelText: 'Votre email',
      hintText: 'exemple@mail.com',
      keyboardType: TextInputType.emailAddress,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'L’adresse mail doit être renseignée.';
        } else if (!EmailValidator.validate(value)) {
          return 'L’adresse mail doit être une adresse mail valide.';
        }
      },
    );
  }
}
