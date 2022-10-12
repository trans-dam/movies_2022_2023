import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:movies/partials/form/email_input.dart';
import 'package:movies/partials/form/password_input.dart';
import 'package:movies/partials/headers/login_header.dart';
import 'package:movies/partials/links/link.dart';
import 'package:movies/routes/routes.dart';

import '../partials/buttons/button.dart';
import '../styles/constants.dart';

class LoginForm extends StatelessWidget {
  LoginForm({Key? key}) : super(key: key);
  final _loginFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _loginFormKey,
        child: SafeArea(
          bottom: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: kHorizontalSpacer,
              vertical: kVerticalSpacer,
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const LoginHeader(),
                  Container(
                    margin: const EdgeInsets.only(
                        top: kVerticalSpacer * 2, bottom: kVerticalSpacer / 2),
                    padding: const EdgeInsets.symmetric(
                        vertical: kVerticalSpacer / 2,
                        horizontal: kHorizontalSpacer),
                    decoration: BoxDecoration(
                        color: kCardPopupBackgroundColor,
                        boxShadow: kBoxShadowItem,
                        borderRadius: kBorderRadiusItem),
                    child: Column(
                      children: const [
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
                      Link('Créer un compte', () {
                        Navigator.pushNamed(context, kRegisterRoute);
                      }),
                      Link('Mot de passe oublié', () {
                        Navigator.pushNamed(context, kResetPasswordRoute);
                      }),
                    ],
                  ),
                  Button('Se connecter', () {
                    if (kDebugMode) {
                      if (_loginFormKey.currentState!.validate()) {
                        print('OK');
                      } else {
                        print('KO');
                      }
                    }
                  })
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
