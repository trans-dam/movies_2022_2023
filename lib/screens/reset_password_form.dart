import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../partials/buttons/button.dart';

class ResetPasswordForm extends StatefulWidget {
  const ResetPasswordForm({Key? key}) : super(key: key);

  @override
  State<ResetPasswordForm> createState() => _ResetPasswordFormState();
}

class _ResetPasswordFormState extends State<ResetPasswordForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Register"),
            Button('Retour', () {
              Navigator.pop(context);
            })
          ],
        ),
      ),
    );
  }
}
