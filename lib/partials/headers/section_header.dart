import 'package:flutter/material.dart';
import '../../styles/constants.dart';

@immutable
class SectionHeader extends StatelessWidget {
  const SectionHeader({required this.title, required this.subTitle, Key? key})
      : super(key: key);

  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          vertical: kVerticalSpacer, horizontal: kHorizontalSpacer),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: kTitleSection,
          ),
          Text(
            subTitle,
            style: kSubtitleStyle,
          ),
        ],
      ),
    );
  }
}
