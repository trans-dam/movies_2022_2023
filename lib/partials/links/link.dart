import 'package:flutter/material.dart';

import '../../styles/constants.dart';

class Link extends StatelessWidget {
  Link(this._text, this._onTap) : super();
  final String _text;
  final GestureTapCallback _onTap;

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
