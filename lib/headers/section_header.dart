import 'package:flutter/material.dart';
import 'package:movies/styles/constants.dart';

class SectionHeader extends StatelessWidget {
  String? title;
  String? subtile;

  SectionHeader({this.title, this.subtile}) : super();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kHorizontalSpacer),
      child: Column(
        children: [
          Text(title == null ? title! : ""),
          Text(subtile == null ? subtile! : ""),
        ],
      ),
    );
  }
}
