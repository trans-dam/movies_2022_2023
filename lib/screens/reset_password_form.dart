import 'package:flutter/material.dart';
import '../partials/buttons/button.dart';
import '../partials/form/email_input.dart';
import '../partials/headers/form_header.dart';
import '../partials/links/link.dart';
import '../routes/router.dart';
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
                  child: FormHeader(),
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
                    Link(
                        text: 'Créer un compte',
                        onTap: () {
                          Navigator.pushNamed(context, kRegisterRoute);
                        }),
                    Link(
                      text: 'Se connecter',
                      onTap: () {
                        Navigator.pushNamed(context, kLoginRoute);
                      },
                    ),
                  ],
                ),
                const SizedBox(
                  height: kVerticalSpacer * 2,
                ),
                Button(
                    label: 'Envoyer email de réinitialisation',
                    onPressed: () {
                      goHome(formKey: _resetPasswordFormKey, context: context);
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
