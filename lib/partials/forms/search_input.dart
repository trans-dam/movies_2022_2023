import 'package:flutter/material.dart';
import 'package:movies/partials/forms/text_input.dart';

import '../../styles/constants.dart';

class SearchInput extends StatelessWidget {
  const SearchInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextInput(
        const Icon(
          Icons.search,
          color: kMainTextColor,
        ),
        'Un film, une série',
        'Rechercher',
        (value) {},
        false,
        false);
  }
}
