import 'package:flutter/foundation.dart';
import 'package:movies/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:movies/screens/home.dart';
import 'package:movies/screens/reset_password_form.dart';

import '../screens/login_form.dart';
import '../screens/register_form.dart';

Map<String, WidgetBuilder> router = {
  kHomeRoute: (context) =>  const Home(),
  kRegisterRoute: (context) => const RegisterForm(),
  kLoginRoute: (context) => LoginForm(),
  kResetPasswordRoute: (context) => const ResetPasswordForm(),
};



goHome({loginFormKey, context}) {
  if (loginFormKey.currentState != null &&
      loginFormKey.currentState!.validate()) {
    if (kDebugMode) {
      Navigator.pushNamed(context, kHomeRoute);
    } else {
      if (kDebugMode) {
        print('KO');
      }
    }
  }
}