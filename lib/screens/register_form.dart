import 'package:flutter/material.dart';
import 'package:movies/links/link.dart';
import 'package:movies/partials/buttons/button.dart';

import '../headers/form_header.dart';
import '../partials/forms/email_input.dart';
import '../partials/forms/password_input.dart';
import '../partials/forms/username_input.dart';
import '../routes/routes.dart';
import '../styles/constants.dart';

class RegisterForm extends StatelessWidget {
  RegisterForm({Key? key}) : super(key: key);

  final _registerFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _registerFormKey,
        child: SafeArea(
          child: Center(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: kHorizontalSpacer),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const FormHeader(),
                    Container(
                      margin: const EdgeInsets.only(
                          top: kVerticalSpacer * 2,
                          bottom: kVerticalSpacer / 2),
                      padding: const EdgeInsets.symmetric(
                          horizontal: kHorizontalSpacer,
                          vertical: kVerticalSpacer / 4),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: kBorderRadiusItem,
                          boxShadow: kBoxShadowItem),
                      child: Column(
                        children: const [
                          UsernameInput(),
                          Divider(
                            height: kVerticalSpacer,
                            color: kMainTextColor,
                          ),
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
                        Link("Se connecter"),
                        Link("Mot de passe oublié ?", kResetFormRoute),
                      ],
                    ),
                    Button("Créer mon compte", () {
                      print("Hello");
                      if (_registerFormKey.currentState != null &&
                          _registerFormKey.currentState!.validate()) {
                        Navigator.pushNamed(context, kHomeRoute);
                      } else {}
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
