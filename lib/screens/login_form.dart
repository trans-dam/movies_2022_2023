import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:movies/partials/buttons/button.dart';
import 'package:movies/partials/headers/header.dart';
import 'package:movies/partials/links/link.dart';
import 'package:movies/routes/routes.dart';
import '../partials/form/email_input.dart';
import '../partials/form/password_inout.dart';
import '../styles/constants.dart';

class LoginForm extends StatelessWidget {
  LoginForm({Key? key}) : super(key: key);
  final _loginFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Text('Login'),
      ),
    );
  }
}
