import 'package:flutter/material.dart';
import 'package:movies/partials/form/text_input.dart';
import 'package:movies/styles/constants.dart';

@immutable
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
            icon: Icons.search,
            labelText: 'Rechercher...',
            hintText: 'Un film, un genre, etc.',
            keyboardType: TextInputType.text,
            validator: (value) {},
            autofocus: false),
      ),
    );
  }
}
