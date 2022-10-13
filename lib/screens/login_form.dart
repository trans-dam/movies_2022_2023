import 'package:flutter/material.dart';
import 'package:movies/links/link.dart';
import 'package:movies/partials/buttons/button.dart';
import 'package:movies/partials/forms/email_input.dart';
import 'package:movies/partials/forms/password_input.dart';
import 'package:movies/routes/routes.dart';
import '../headers/form_header.dart';
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
                        color: Colors.white,
                        borderRadius: kBorderRadiusItem,
                        boxShadow: kBoxShadowItem),
                    child: Column(
                      children: const [
                        EmailInput(),
                        Divider(
                          height: kVerticalSpacer,
                          color: kMainTextColor,
                        ),
                        PasswordInput(),
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
                    } else {}
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
