import 'package:flutter/material.dart';
import 'package:movies/partials/form/text_input.dart';
import 'package:movies/styles/constants.dart';

class SearchInput extends StatelessWidget {
  const SearchInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: kHorizontalSpacer / 2,
        ),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: kBorderRadiusItem,
            boxShadow: kBoxShadowItem),
        child: TextInput(
            Icons.search,
            'Rechercher...',
            'Un film, un genre, etc.',
            TextInputType.text,
            (value) {},
            false,
            false),
      ),
    );
  }
}
