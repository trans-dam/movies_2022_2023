import 'package:movies/routes/routes.dart';
import 'package:movies/screens/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movies/screens/login_form.dart';
import 'package:movies/screens/register_form.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/login',
      routes: {
        kHomeRoute: (context) => const Home(),
        kLoginRoute: (context) => LoginForm(),
        kRegisterRoute: (context) => const RegisterForm(),
      },
      theme: ThemeData(
        fontFamily: 'Avenir',
      ),
    );
  }
}
