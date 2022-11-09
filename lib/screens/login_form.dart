import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:movies/partials/buttons/button.dart';
import 'package:movies/partials/headers/form_header.dart';
import 'package:movies/partials/links/link.dart';
import 'package:movies/routes/routes.dart';
import '../partials/form/email_input.dart';
import '../partials/form/password_input.dart';
import '../styles/constants.dart';

class LoginForm extends StatelessWidget {
  LoginForm({Key? key}) : super(key: key);
  final _loginFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    String _email = "";
    String _password = "";
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
                  decoration: kBoxDecoration,
                  child: Column(
                    children: [
                      EmailInput(
                        onChanged: (value) {
                          _email = value;
                        },
                      ),
                      const Divider(
                        color: kMainTextColor,
                        height: kVerticalSpacer * 2,
                      ),
                      PasswordInput(onChanged: (value) {
                        _password = value;
                      }),
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
                      text: 'Mot de passe oublié',
                      onTap: () {
                        Navigator.pushNamed(context, kResetPasswordRoute);
                      },
                    ),
                  ],
                ),
                const SizedBox(
                  height: kVerticalSpacer * 2,
                ),
                Button(
                    label: 'Se connecter',
                    onPressed: () {
                      if (_loginFormKey.currentState != null &&
                          _loginFormKey.currentState!.validate()) {
                        FirebaseAuth.instance.signInWithEmailAndPassword(
                            email: _email, password: _password)
                            .then((value) {
                          Navigator.pushNamed(context, kHomeRoute);
                        }).onError((error, stackTrace) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                                content: Text(
                                  error.toString(),
                                  style: const TextStyle(color: Colors.white),
                                ),
                                backgroundColor: Colors.redAccent),
                          );
                        });
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