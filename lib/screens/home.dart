import 'package:flutter/material.dart';
import 'package:movies/headers/form_header.dart';
import 'package:movies/partials/buttons/button.dart';
import 'package:movies/partials/forms/text_input.dart';
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
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kHorizontalSpacer),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Home",
                style: kLargeTitleStyle,
              ),
              Button('Go back', () {}),
            ],
          ),
        ),
      ),
    );
  }
}
