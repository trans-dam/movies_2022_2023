import 'package:flutter/material.dart';
import 'package:movies/styles/constants.dart';

@immutable
class SectionHeader extends StatelessWidget {
  final String title;
  final String subtile;

  const SectionHeader({super.key, required this.title, required this.subtile});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          left: kHorizontalSpacer,
          right: kHorizontalSpacer,
          top: kVerticalSpacer * 2,
          bottom: kVerticalSpacer),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: kTitleSection,
          ),
          Text(
            subtile,
            style: kSubtitleStyle,
          ),
        ],
      ),
    );
  }
}
