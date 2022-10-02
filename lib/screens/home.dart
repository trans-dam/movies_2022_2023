import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:movies/partials/form/textInput.dart';
import 'package:movies/screens/login_form.dart';
import 'package:movies/styles/constants.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<Home> with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        bottom: false,
        child: LoginForm(),
      ),
    );
  }
}
