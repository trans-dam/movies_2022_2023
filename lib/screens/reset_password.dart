import 'package:flutter/material.dart';
import 'package:movies/partials/buttons/button.dart';

import '../styles/constants.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
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
              Button('Go back', () {
                Navigator.pop(context);
              }),
            ],
          ),
        ),
      ),
    );
  }
}
