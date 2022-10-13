import 'package:flutter/material.dart';
import 'package:movies/partials/buttons/button.dart';

import '../headers/form_header.dart';
import '../links/link.dart';
import '../partials/forms/email_input.dart';
import '../routes/routes.dart';
import '../styles/constants.dart';

class ResetPassword extends StatelessWidget {
  ResetPassword({Key? key}) : super(key: key);
  final _resetFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _resetFormKey,
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
                          EmailInput(),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Link("Créer un compte", kRegisterFormRoute),
                        Link("Se connecter", kResetFormRoute),
                      ],
                    ),
                    Button("Envoyer l’email de réinitialisation", () {
                      print("Hello");
                      if (_resetFormKey.currentState != null &&
                          _resetFormKey.currentState!.validate()) {
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
