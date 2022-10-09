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
                Button('Se connecter', () {
                  if (_loginFormKey.currentState != null &&
                      _loginFormKey.currentState!.validate()) {
                    if (kDebugMode) {
                      Navigator.pushNamed(context, kHomeRoute);
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
