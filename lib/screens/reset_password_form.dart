import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:movies/partials/buttons/button.dart';
import 'package:movies/routes/routes.dart';
import 'package:movies/styles/constants.dart';
import '../partials/form/password_input.dart';
import '../partials/headers/login_header.dart';
import '../partials/links/link.dart';

class ResetPasswordForm extends StatelessWidget {
  ResetPasswordForm({Key? key}) : super(key: key);

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
              child: SingleChildScrollView(
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
                        Link('Créer un compte', () {
                          Navigator.pushNamed(context, kRegisterRoute);
                        }),
                      ],
                    ),
                    Button('Envoyer l’email de réinitialisation', () {
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
      ),
    );
  }
}
