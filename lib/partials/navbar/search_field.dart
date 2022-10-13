import 'package:flutter/material.dart';
import 'package:movies/styles/constants.dart';

import '../forms/search_input.dart';

class SearchField extends StatelessWidget {
  const SearchField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: kBoxDecoration,
        child: SearchInput(),
      ),
    );
  }
}
