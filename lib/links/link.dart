import 'package:flutter/material.dart';

import '../styles/constants.dart';

class Link extends StatelessWidget {
  const Link(this._label, [this._route = ""]) : super();

  final String _route;
  final String _label;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (_route.trim().isEmpty) {
          Navigator.pop(context);
        } else {
          Navigator.pushNamed(context, _route);
        }
      },
      child: Text(
        _label,
        style: kTagLineStyle,
      ),
    );
  }
}
