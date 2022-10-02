import 'package:flutter/material.dart';
import 'package:movies/partials/buttons/button.dart';

import '../partials/form/textInput.dart';
import '../styles/constants.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: kHorizontalSpacer,
        vertical: 0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Column(
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
            ),
          ),
          Container(
            margin: const EdgeInsets.only(
                top: kVerticalSpacer * 3, bottom: kVerticalSpacer / 2),
            padding: const EdgeInsets.symmetric(
              vertical: kVerticalSpacer / 2,
              horizontal: kHorizontalSpacer,
            ),
            decoration: BoxDecoration(
                color: kCardPopupBackgroundColor,
                boxShadow: kBoxShadowItem,
                borderRadius: kBorderRadiusItem),
            child: Column(
              children: [
                TextInput(
                  const Icon(
                    Icons.mail,
                    color: kMainTextColor,
                  ),
                  'Votre email',
                ),
                const Divider(
                  color: kMainTextColor,
                  height: kVerticalSpacer * 2,
                ),
                TextInput(
                    const Icon(
                      Icons.password,
                      color: kMainTextColor,
                    ),
                    'Votre mot de passe',
                    true),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'Créer un compte',
                style: kTagLineStyle,
              ),
              Text(
                'Mot de passe oublié',
                style: kTagLineStyle,
              ),
            ],
          ),
          const SizedBox(
            height: kVerticalSpacer * 2,
          ),
          Button('Se connecter', () {})
        ],
      ),
    );
  }
}
