import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:movies/links/link.dart';
import 'package:movies/partials/buttons/button.dart';
import 'package:movies/routes/routes.dart';
import '../headers/form_header.dart';
import '../partials/forms/text_input.dart';
import '../styles/constants.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _loginFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _loginFormKey,
        child: SafeArea(
          child: Center(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: kHorizontalSpacer),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const FormHeader(),
                  Container(
                    margin: const EdgeInsets.only(
                        top: kVerticalSpacer * 2, bottom: kVerticalSpacer / 2),
                    padding: const EdgeInsets.symmetric(
                        horizontal: kHorizontalSpacer,
                        vertical: kVerticalSpacer / 4),
                    decoration: BoxDecoration(
                        color: kCardPopupBackgroundColor,
                        borderRadius: kBorderRadiusItem,
                        boxShadow: kBoxShadowItem),
                    child: Column(
                      children: [
                        TextInput(
                            const Icon(
                              Icons.mail,
                              color: kMainTextColor,
                            ),
                            'votre@mail.com',
                            'email', (value) {
                          if (value == null || value.trim().isEmpty) {
                            return "L’email est obligatoire";
                          } else if (!EmailValidator.validate(value)) {
                            return "L’email n’est pas au bon format.";
                          }
                        }),
                        const Divider(
                          height: kVerticalSpacer,
                          color: kMainTextColor,
                        ),
                        TextInput(
                            const Icon(
                              Icons.password,
                              color: kMainTextColor,
                            ),
                            'votre mot de passe',
                            'Mot de passe', (value) {
                          if (value == null || value.trim().isEmpty) {
                            return "Le mot de passe est obligatoire";
                          }
                        }, true),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Link("Créer un compte", kRegisterFormRoute),
                      Link("Mot de passe oublié ?", kResetFormRoute),
                    ],
                  ),
                  Button("Se connecter", () {
                    print("Hello");
                    if (_loginFormKey.currentState != null &&
                        _loginFormKey.currentState!.validate()) {
                      Navigator.pushNamed(context, kHomeRoute);
                    } else {
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
