import 'package:flutter/material.dart';
import '../headers/form_header.dart';
import '../partials/forms/text_input.dart';
import '../styles/constants.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kHorizontalSpacer),
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
                    children: const [
                      TextInput(
                          Icon(
                            Icons.mail,
                            color: kMainTextColor,
                          ),
                          'votre@mail.com',
                          'email'),
                      Divider(
                        height: kVerticalSpacer,
                        color: kMainTextColor,
                      ),
                      TextInput(
                          Icon(
                            Icons.password,
                            color: kMainTextColor,
                          ),
                          'votre mot de passe',
                          'Mot de passe',
                          true),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Créer un compte",
                      style: kTagLineStyle,
                    ),
                    Text(
                      "Mot de passe oublié ?",
                      style: kTagLineStyle,
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
