import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';
import 'package:movies/cards/single_media_picture.dart';
import 'package:movies/models/media.dart';
import 'package:movies/styles/constants.dart';

import 'media_rate.dart';

class MediaCard extends StatefulWidget {
  final Media _media;
  final bool _isLast;

  const MediaCard(this._media, this._isLast, {Key? key}) : super(key: key);

  @override
  State<MediaCard> createState() => _MediaCardState();
}

class _MediaCardState extends State<MediaCard> {

  late DateFormat dateFormat;

  @override
  void initState() {
    super.initState();
    initializeDateFormatting();
    dateFormat = DateFormat.yMMMMd('fr');
  }


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          left: kDefaultSpacer, right: widget._isLast ? kDefaultSpacer : 0),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Stack(
          alignment: AlignmentDirectional.bottomStart,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 25),
              child: SingleMediaPicture(widget._media.posterPath),
            ),
            Row(
              children: [
                const SizedBox(
                  width: kDefaultSpacer,
                ),
                MediaRate(voteAverage: widget._media.voteAverage),
              ],
            )
          ],
        ),
        Hero(
          tag: widget._media.title,
          child: Text(
            widget._media.title,
            softWrap: true,
            maxLines: 2,
            style: kCardTitleStyle.apply(color: kMainTextColor),
          ),
        ),
        const SizedBox(height: kVerticalSpacer/8),
        Text(
          dateFormat.format(widget._media.releaseDate),
          style: kCardSubtitleStyle.apply(color: kMainTextColor),
          textAlign: TextAlign.left,
        )
      ]),
    );
  }
}
