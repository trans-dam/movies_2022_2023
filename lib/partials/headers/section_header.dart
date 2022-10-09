import 'package:flutter/material.dart';

import '../../styles/constants.dart';

class SectionHeader extends StatelessWidget {
  const SectionHeader(this._header, this._subTitle, {super.key});

  final String _header;
  final String _subTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kVerticalSpacer,horizontal: kHorizontalSpacer),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            _header,
            style: kTitleSection,
          ),
          Text(
            _subTitle,
            style: kSubtitleStyle,
          ),
        ],
      ),
    );
  }
}
