import 'package:flutter/material.dart';
import 'package:movies/partials/form/text_input.dart';

@immutable
class UserNameInput extends StatelessWidget {
  final ValueChanged<String>? onChanged;

  const UserNameInput({this.onChanged, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextInput(
      icon: Icons.person,
      labelText: 'Votre nom d’utilisateur',
      hintText: 'unique.name',
      keyboardType: TextInputType.text,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Le nom d’utilisateur doit être renseigné.';
        } else if (value.length < 2) {
          return 'Le nom d’utilisateur doit contenir au moins 2 caractères.';
        }
      },
      onChanged: onChanged,
    );
  }
}
