import 'package:movies/styles/constants.dart';
import 'package:flutter/material.dart';

class BurgerMenu extends StatefulWidget {
  const BurgerMenu({Key? key}) : super(key: key);

  @override
  _BurgerMenuState createState() => _BurgerMenuState();
}

class _BurgerMenuState extends State<BurgerMenu> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Scaffold.of(context).openDrawer();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: kBorderRadiusItem,
          boxShadow: kBoxShadowItem,
        ),
        child: const Padding(
          padding: EdgeInsets.symmetric(
              horizontal: kHorizontalSpacer / 4, vertical: kVerticalSpacer / 2),
          child: Image(
            width: 30,
            height: 14,
            image: AssetImage('assets/icons/icon-sidebar.png'),
          ),
        ),
      ),
    );
  }
}
