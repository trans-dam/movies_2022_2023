import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../partials/buttons/button.dart';
import '../partials/form/email_input.dart';
import '../partials/headers/header.dart';
import '../partials/links/link.dart';
import '../routes/routes.dart';
import '../styles/constants.dart';

class ResetPasswordForm extends StatefulWidget {
  const ResetPasswordForm({Key? key}) : super(key: key);

  @override
  State<ResetPasswordForm> createState() => _ResetPasswordFormState();
}

class _ResetPasswordFormState extends State<ResetPasswordForm> {
  final _resetPasswordFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Form(
          key: _resetPasswordFormKey,
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
                      'Se connecter',
                      () {
                        Navigator.pushNamed(context, kLoginRoute);
                      },
                    ),
                  ],
                ),
                const SizedBox(
                  height: kVerticalSpacer * 2,
                ),
                Button('Envoyer email de réinitialisation', () {
                  if (_resetPasswordFormKey.currentState != null &&
                      _resetPasswordFormKey.currentState!.validate()) {
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
