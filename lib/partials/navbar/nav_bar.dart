import 'package:flutter/material.dart';
import 'package:movies/partials/avatar.dart';
import 'package:movies/partials/navbar/burger_menu.dart';
import 'package:movies/partials/navbar/search_field.dart';
import 'package:movies/styles/constants.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: kHorizontalSpacer),
      child: Row(
        children: const [
          BurgerMenu(),
          SizedBox(width: kHorizontalSpacer),
          SearchField(),
          SizedBox(width: kHorizontalSpacer),
          Icon(Icons.notifications),
          SizedBox(width: kHorizontalSpacer),
          Avatar()
        ],
      ),
    );
  }
}
