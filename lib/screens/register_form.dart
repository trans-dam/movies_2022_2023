import 'package:flutter/material.dart';
import 'package:movies/partials/buttons/button.dart';

import '../styles/constants.dart';

class RegisterForm extends StatefulWidget {
  const RegisterForm({Key? key}) : super(key: key);

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kHorizontalSpacer),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Register form",
                style: kLargeTitleStyle,
              ),
              Button('Go back', () {}),
            ],
          ),
        ),
      ),
    );
  }
}
