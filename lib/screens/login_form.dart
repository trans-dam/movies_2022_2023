import 'package:email_validator/email_validator.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:movies/partials/buttons/button.dart';
import 'package:movies/partials/links/link.dart';
import 'package:movies/routes/routes.dart';

import '../partials/form/textInput.dart';
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
                Center(
                  child: Column(
                    children: const [
                      Text(
                        'Movies',
                        style: kLargeTitleStyle,
                      ),
                      Text(
                        'L’application pour découvrir des nouveaux film.',
                        style: kSubtitleStyle,
                      ),
                    ],
                  ),
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
                    children: [
                      TextInput(
                        const Icon(
                          Icons.mail,
                          color: kMainTextColor,
                        ),
                        'Votre email',
                        (value) {
                          if (value == null || value.isEmpty) {
                            return 'L’adresse mail doit être renseignée.';
                          } else if (!EmailValidator.validate(value)) {
                            return 'L’adresse mail doit être une adresse mail valide.';
                          }
                        },
                      ),
                      const Divider(
                        color: kMainTextColor,
                        height: kVerticalSpacer * 2,
                      ),
                      TextInput(
                          const Icon(
                            Icons.password,
                            color: kMainTextColor,
                          ),
                          'Votre mot de passe', (value) {
                        if (value == null || value.isEmpty) {
                          return 'Le mot de passe doit être défini.';
                        } else if (value.length < 9) {
                          return 'Le mot de passe doit contenir au moins 9 caractères.';
                        }
                      }, true),
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
                      'Mot de passe oublié',() {
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
