import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:movies/partials/buttons/button.dart';
import 'package:movies/partials/form/email_input.dart';
import 'package:movies/partials/form/password_inout.dart';
import 'package:movies/partials/form/username_input.dart';

import '../partials/headers/header.dart';
import '../partials/links/link.dart';
import '../routes/routes.dart';
import '../styles/constants.dart';

class RegisterForm extends StatefulWidget {
  const RegisterForm({Key? key}) : super(key: key);

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final _loginFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Form(
          key: _loginFormKey,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: kHorizontalSpacer,
              vertical: 0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Center(
                  child: LoginHeader(),
                ),
                Container(
                  margin: const EdgeInsets.only(
                      top: kVerticalSpacer * 3, bottom: kVerticalSpacer / 2),
                  padding: const EdgeInsets.symmetric(
                    vertical: kVerticalSpacer / 2,
                    horizontal: kHorizontalSpacer,
                  ),
                  decoration: BoxDecoration(
                      color: kCardPopupBackgroundColor,
                      boxShadow: kBoxShadowItem,
                      borderRadius: kBorderRadiusItem),
                  child: Column(
                    children: const [
                      UserNameInput(),
                      Divider(
                        color: kMainTextColor,
                        height: kVerticalSpacer * 2,
                      ),
                      EmailInput(),
                      Divider(
                        color: kMainTextColor,
                        height: kVerticalSpacer * 2,
                      ),
                      PasswordInput(),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Link('Se connecter', () {
                      Navigator.pushNamed(context, kLoginRoute);
                    }),
                    Link(
                      'Mot de passe oublié',
                      () {
                        Navigator.pushNamed(context, kResetPasswordRoute);
                      },
                    ),
                  ],
                ),
                const SizedBox(
                  height: kVerticalSpacer * 2,
                ),
                Button('Créer un compte', () {
                  if (_loginFormKey.currentState != null &&
                      _loginFormKey.currentState!.validate()) {
                    if (kDebugMode) {
                      print('OK');
                    } else {
                      if (kDebugMode) {
                        print('KO');
                      }
                    }
                  }
                })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
