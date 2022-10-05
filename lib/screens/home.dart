import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
        bottom: false,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: kHorizontalSpacer,
            vertical: kVerticalSpacer,
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Movies", style: kLargeTitleStyle),
                const Text("L’application pour découvrir des nouveaux films",
                    style: kSubtitleStyle),
                Container(
                  margin: const EdgeInsets.only(
                      top: kVerticalSpacer * 2, bottom: kVerticalSpacer / 2),
                  padding: const EdgeInsets.symmetric(
                      vertical: kVerticalSpacer / 2,
                      horizontal: kHorizontalSpacer),
                  decoration: BoxDecoration(
                      color: kCardPopupBackgroundColor,
                      boxShadow: kBoxShadowItem,
                      borderRadius: kBorderRadiusItem),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.zero,
                          hintText: 'Votre email',
                          isDense: true,
                          iconColor: kMainTextColor,
                          icon: Icon(Icons.mail),
                        ),
                      ),
                      const Divider(
                        color: kMainTextColor,
                        height: kVerticalSpacer * 2,
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
