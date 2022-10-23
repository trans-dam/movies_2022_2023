import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:movies/models/data_item.dart';

import '../../styles/constants.dart';

class MyMenuItem extends StatelessWidget {

  const MyMenuItem({required this.menuItemData, Key? key}) : super(key: key);
  final MenuItemData menuItemData;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              width: kDefaultWidth,
              height: kDefaultWidth,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: kBorderRadiusItem,
                gradient: menuItemData.gradient,
              ),
              child: IconButton(
                icon: menuItemData.icon,
                iconSize: 18,
                color: Colors.white,
                onPressed: () {
                  if (kDebugMode) {
                    print(menuItemData.name);
                  }
                },
              ),
            ),
            const SizedBox(
              width: kHorizontalSpacer * 0.8,
            ),
            Text(
              menuItemData.name,
              style: kFontStyleMenuItem,
            ),
          ],
        ),
        const SizedBox(
          height: kVerticalSpacer,
        )
      ],
    );
  }
}
