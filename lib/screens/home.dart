import 'package:flutter/material.dart';
import 'package:movies/headers/form_header.dart';
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
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kHorizontalSpacer),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const FormHeader(),
                Container(
                  margin: const EdgeInsets.only(
                      top: kVerticalSpacer * 2, bottom: kVerticalSpacer / 2),
                  padding: const EdgeInsets.symmetric(
                      horizontal: kHorizontalSpacer,
                      vertical: kVerticalSpacer / 4),
                  decoration: BoxDecoration(
                    color: kCardPopupBackgroundColor,
                  ),
                  child: Column(
                    children: [
                      TextInput(const Icon(
                        Icons.mail,
                        color: kMainTextColor,
                      ),'votre@mail.com'),
                      const Divider(
                        height: kVerticalSpacer,
                        color: kMainTextColor,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
