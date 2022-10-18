import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../partials/buttons/button.dart';
import '../partials/form/email_input.dart';
import '../partials/headers/header.dart';
import '../partials/links/link.dart';
import '../routes/routes.dart';
import '../styles/constants.dart';

class ResetPasswordForm extends StatefulWidget {
  const ResetPasswordForm({Key? key}) : super(key: key);

  @override
  State<ResetPasswordForm> createState() => _ResetPasswordFormState();
}

class _ResetPasswordFormState extends State<ResetPasswordForm> {

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Text('Register'),
      ),
    );
  }
}

