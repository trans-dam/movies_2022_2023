import 'package:flutter/material.dart';
import 'package:movies/headers/section_header.dart';
import 'package:movies/partials/buttons/button.dart';
import 'package:movies/partials/navbar/nav_bar.dart';
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
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            NavBar(),
            SectionHeader(
              title: "Films populaires",
              subtile: "Cette semaine",
            )
          ],
        ),
      ),
    );
  }
}
