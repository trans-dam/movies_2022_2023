import 'package:flutter/material.dart';
import 'package:movies/styles/constants.dart';

import 'text_input.dart';

class SearchInput extends StatelessWidget {
  const SearchInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: kBorderRadiusItem,
          boxShadow: kBoxShadowItem
        ),
        padding: const EdgeInsets.symmetric(
            horizontal: kHorizontalSpacer / 4, vertical: kVerticalSpacer / 2),
        child: TextInput(
            'Rechercher...',
            const Icon(
              Icons.person,
              color: kMainTextColor,
            ),
            (value) {},
            TextInputType.text),
      ),
    );
  }
}
