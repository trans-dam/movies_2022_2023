import 'package:flutter/material.dart';
import 'package:movies/routes/routes.dart';
import 'package:movies/screens/login_form.dart';
import 'package:movies/screens/register_form.dart';
import 'package:movies/screens/reset_password.dart';

import '../screens/home.dart';

Map<String, WidgetBuilder> kRouter = {
  kHomeRoute: (context) => const Home(),
  kInitRoute: (context) =>  const Home(),
  kLoginFormRoute: (context) =>  LoginForm(),
  kRegisterFormRoute: (context) => RegisterForm(),
  kResetFormRoute: (context) => ResetPassword(),
};
