import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:movies/partials/buttons/button.dart';
import 'package:movies/partials/form/demo.dart';
import 'package:movies/partials/headers/header.dart';
import 'package:movies/styles/constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final _loginFormKey = GlobalKey<FormState>();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Avenir',
        backgroundColor: kMainBackgroundColor,
      ),
      home: Scaffold(
        body: SafeArea(
          child: Form(
            key: _loginFormKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const LoginHeader(),
                Container(
                  child: Column(
                    children: [
                      TextFormField(
                        validator: (value) {
                          if (value == null || value.trim().isEmpty) {
                            return "L’email est obligatoire !";
                          } else if (!EmailValidator.validate(value)) {
                            return "L’email n’est pas au bon format";
                          }
                        },
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          labelText: "email",
                          labelStyle: kLoginInputTextStyle,
                          hintText: "1@test.com",
                          hintStyle: kLoginInputTextStyle,
                          icon: Icon(
                            Icons.mail,
                            color: kMainTextColor,
                          ),
                        ),
                      ),
                      Demo(
                        validator: (value) {
                          if (value == null || value.trim().isEmpty) {
                            return "Le mot de passe est obligatoire !";
                          } else if (value.length < 10) {
                            return "Le mot de passe est trop court";
                          }
                        },
                        obscureText: true,
                      ),
                    ],
                  ),
                ),
                Button('Se connecter', () {
                  if (_loginFormKey.currentState!.validate()) {
                    print("OK");
                  } else {
                    print("KO");
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
