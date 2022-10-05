import 'package:flutter/material.dart';
import 'package:movies/partials/buttons/button.dart';

class RegisterForm extends StatefulWidget {
  const RegisterForm({Key? key}) : super(key: key);

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Register'),
          Button('Retourner à la page précédente', () {
            Navigator.pop(context);
          }),
        ],
      ),
    );
  }
}
