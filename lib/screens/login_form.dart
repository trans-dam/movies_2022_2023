import 'package:email_validator/email_validator.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:movies/partials/headers/login_header.dart';
import 'package:movies/partials/links/link.dart';
import 'package:movies/routes/routes.dart';

import '../partials/buttons/button.dart';
import '../partials/form/text_input.dart';
import '../styles/constants.dart';

class LoginForm extends StatefulWidget {
  LoginForm({Key? key}) : super(key: key);
  final _formKey = GlobalKey<FormState>();

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: widget._formKey,
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
                      children: [
                        TextInput(
                            'Votre email',
                            const Icon(
                              Icons.mail,
                              color: kMainTextColor,
                            ), (value) {
                          if (value == null || value.trim().isEmpty) {
                            return 'Le champ «email» est obligatoire!';
                          } else if (!EmailValidator.validate(value)) {
                            return 'L’email n’est pas au bon format';
                          }
                        }),
                        const Divider(
                          color: kMainTextColor,
                          height: kVerticalSpacer * 2,
                        ),
                        TextInput(
                            'Votre mot de passe',
                            const Icon(
                              Icons.password,
                              color: kMainTextColor,
                            ), (value) {
                          if (value == null || value.trim().isEmpty) {
                            return 'Le champ «mot de passe» est obligatoire!';
                          } else if (value.length < 9) {
                            return 'Ce mot de passe est trop court. (9 caractères)';
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
                      Link('Mot de passe oublié', () {
                        Navigator.pushNamed(context, kRegisterRoute);
                      }),
                    ],
                  ),
                  Button('Se connecter', () {
                    if (kDebugMode) {
                      if (widget._formKey.currentState!.validate()) {
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
