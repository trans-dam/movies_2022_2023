import 'package:flutter/material.dart';

import '../../styles/constants.dart';

class Link extends StatelessWidget {
  Link(this._text, this._onTap) : super();
  final GestureTapCallback _onTap;
  final String _text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _onTap,
      child: Text(
        _text,
        style: kTagLineStyle,
      ),
    );
  }
}
