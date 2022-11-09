import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:movies/routes/router.dart';
import 'package:movies/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:movies/screens/error.dart';
import 'package:movies/styles/constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Firebase.initializeApp(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return MaterialApp(
            initialRoute: FirebaseAuth.instance.currentUser == null
                ? kLoginRoute
                : kHomeRoute,
            routes: router,
            theme: ThemeData(
                fontFamily: 'Avenir', backgroundColor: kMainBackgroundColor),
          );
        }
        return const ErrorScreen();
      },
    );
  }
}
