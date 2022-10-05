import 'package:flutter/cupertino.dart';

import '../../styles/constants.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Text("Movies", style: kLargeTitleStyle),
        Text("L’application pour découvrir des nouveaux films",
            style: kSubtitleStyle)
      ],
    );
  }
}
