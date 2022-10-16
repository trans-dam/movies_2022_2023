import 'package:movies/routes/router.dart';
import 'package:movies/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:movies/styles/constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: kHomeRoute,
      routes: router,
      theme: ThemeData(
          fontFamily: 'Avenir', backgroundColor: kMainBackgroundColor),
    );
  }
}
