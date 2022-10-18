import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:movies/screens/login_form.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<Home> with TickerProviderStateMixin {

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Text('Home'),
      ),
    );
  }
}