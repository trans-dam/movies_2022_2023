import 'package:flutter/material.dart';
import 'package:movies/partials/avatar.dart';
import 'package:movies/partials/form/search_input.dart';
import 'package:movies/partials/navbar/burger_menu.dart';
import 'package:movies/styles/constants.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kHorizontalSpacer),
      child: Row(
        children: const [
          BurgerMenu(),
          SizedBox(
            width: kHorizontalSpacer,
          ),
          SearchInput(),
          SizedBox(
            width: kHorizontalSpacer,
          ),
          Icon(
            Icons.notifications,
            color: kMainTextColor,
          ),
          SizedBox(
            width: kHorizontalSpacer,
          ),
          Avatar()
        ],
      ),
    );
  }
}
