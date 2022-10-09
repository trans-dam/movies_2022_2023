import 'package:flutter/material.dart';

import '../../styles/constants.dart';

class FormHeader extends StatelessWidget {
  const FormHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Text(
          'Movies',
          style: kLargeTitleStyle,
        ),
        Text(
          'L’application pour découvrir des nouveaux film.',
          style: kSubtitleStyle,
        ),
      ],
    );
  }
}
