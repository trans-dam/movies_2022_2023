import 'package:movies/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:movies/screens/reset_password_form.dart';

import '../screens/home.dart';
import '../screens/login_form.dart';
import '../screens/register_form.dart';

Map<String, WidgetBuilder> router = {
  kDefaultRoute: (context) => const Home(),
  kRegisterRoute: (context) => RegisterForm(),
  kLoginRoute: (context) => LoginForm(),
  kResetPasswordRoute: (context) => ResetPasswordForm(),
};
