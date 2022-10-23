import 'package:flutter/material.dart';
import 'package:movies/models/media.dart';
import 'package:movies/styles/constants.dart';

import '../cards/single_media_picture.dart';
import '../partials/buttons/close_button.dart';
import '../partials/stars.dart';

class SingleMedia extends StatelessWidget {
  const SingleMedia({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _media = ModalRoute.of(context)!.settings.arguments as Media;
    
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                BackdropPath(_media.backdropPath),
                const MyCloseButton(),
                Positioned(
                  left: kHorizontalSpacer,
                  bottom: 0,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SingleMediaPicture(path: _media.posterPath),
                      Stars(withBorder: (_media.voteAverage / 2).floor() )
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: kVerticalSpacer,
                  left: kHorizontalSpacer,
                  right: kHorizontalSpacer),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Hero(
                    tag: _media.title,
                    child: Text(
                      _media.title,
                      style: kLargeTitleStyle,
                    ),
                  ),
                  const SizedBox(
                    height: kVerticalSpacer / 3,
                  ),
                  Text(
                    widget.mediaDetail.tagline,
                    style: kTagLineStyle,
                  ),
                  SizedBox(
                    height: 20,
                    width: double.infinity,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemCount: widget.mediaDetail.genres.length,
                      separatorBuilder: (BuildContext context, int index) {
                        return const Text(
                          " - ",
                          style: kGenreStyle,
                        );
                      },
                      itemBuilder: (BuildContext context, int index) {
                        var g = widget.mediaDetail.genres;
                        return Text(
                          "${g[index]['name']}",
                          style: kGenreStyle,
                        );
                      },
                    ),
                  ),
                  const SizedBox(
                    height: kVerticalSpacer,
                  ),
                  const Text(
                    "Description",
                    style: kTitleSection,
                  ),
                  const SizedBox(
                    height: kVerticalSpacer / 2,
                  ),
                  Text(
                    _media.overview,
                    style: kBodyLabelStyle,
                  ),
                  const SizedBox(
                    height: kVerticalSpacer,
                  ),
                  const Text(
                    "Date de sortie",
                    style: kTitleSection,
                  ),
                  const SizedBox(
                    height: kVerticalSpacer / 2,
                  ),
                  Text(
                    dateFormat.format(_media.releaseDate),
                    style: kBodyLabelStyle,
                    textAlign: TextAlign.left,
                  ),
                  const SizedBox(
                    height: kVerticalSpacer,
                  ),
                  const Text(
                    "Durée",
                    style: kTitleSection,
                  ),
                  const SizedBox(
                    height: kVerticalSpacer / 2,
                  ),
                  Text(
                    '${(widget.mediaDetail.runtime / 60).truncate().toString().padLeft(2, '0')} : ${(widget.mediaDetail.runtime % 60).truncate().toString().padLeft(2, '0')}',
                    style: kBodyLabelStyle,
                    textAlign: TextAlign.left,
                  ),
                  const SizedBox(
                    height: kVerticalSpacer,
                  ),
                  ActorList(movieId: _media.movieId),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
