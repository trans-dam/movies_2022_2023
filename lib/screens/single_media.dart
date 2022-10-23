import 'dart:convert';
import 'package:intl/date_symbol_data_local.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:movies/models/media.dart';
import 'package:movies/models/media_detail.dart';
import 'package:movies/styles/constants.dart';
import 'package:http/http.dart' as http;
import '../cards/backdrop_path.dart';
import '../cards/single_media_picture.dart';
import '../partials/buttons/close_button.dart';
import '../partials/sliders/actor_slider.dart';
import '../partials/stars.dart';

class SingleMedia extends StatefulWidget {
  final Media media;

  const SingleMedia({required this.media, Key? key}) : super(key: key);

  @override
  State<SingleMedia> createState() => _SingleMediaState();
}

class _SingleMediaState extends State<SingleMedia> {
  MediaDetail? _mediaDetail;
  DateFormat? dateFormat;

  void getMediaDetailFromApi() {
    http
        .get(Uri.parse(
            'https://api.themoviedb.org/3/movie/${widget.media.id}?api_key=fc0b570a0ec2e5a82a99bf4d8340e012&language=fr-fr'))
        .then((response) {
      if (response.statusCode == 200) {
        setState(() {
          _mediaDetail = MediaDetail.fromJson(jsonDecode(response.body));
        });
      } else {
        throw Exception(
            'Oups ! ${response.statusCode} : ${response.reasonPhrase} \n id ! ${widget.media.id}');
      }
    }).onError((error, stackTrace) {
      throw Exception(error);
    });
  }

  @override
  void reassemble() {
    super.reassemble();
    getMediaDetailFromApi();
    initializeDateFormatting();
    setState(() {
      dateFormat = DateFormat.yMMMMd('fr');
    });
  }

  @override
  void initState() {
    super.initState();
    reassemble();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                BackdropPath(backdropPath: widget.media.backdropPath),
                const MyCloseButton(),
                Positioned(
                  left: kHorizontalSpacer,
                  bottom: 0,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SingleMediaPicture(path: widget.media.posterPath),
                      Stars(withBorder: (widget.media.voteAverage / 2).floor())
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
                    tag: widget.media.title,
                    child: Text(
                      widget.media.title,
                      style: kLargeTitleStyle,
                    ),
                  ),
                  const SizedBox(
                    height: kVerticalSpacer / 3,
                  ),
                  Text(
                    _mediaDetail != null ? _mediaDetail!.tagline : '',
                    style: kTagLineStyle,
                  ),
                  SizedBox(
                    height: 20,
                    width: double.infinity,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemCount: _mediaDetail != null
                          ? _mediaDetail!.genres.length
                          : 0,
                      separatorBuilder: (BuildContext context, int index) {
                        return const Text(
                          " - ",
                          style: kGenreStyle,
                        );
                      },
                      itemBuilder: (BuildContext context, int index) {
                        var g =
                            _mediaDetail != null ? _mediaDetail!.genres : [];
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
                    widget.media.overview,
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
                  dateFormat != null
                      ? Text(
                          dateFormat!.format(widget.media.releaseDate),
                          style: kBodyLabelStyle,
                          textAlign: TextAlign.left,
                        )
                      : const Text(''),
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
                    '${(_mediaDetail != null ? _mediaDetail!.runtime / 60 : 0).truncate().toString().padLeft(2, '0')} : ${(_mediaDetail != null ? _mediaDetail!.runtime % 60 : 0).truncate().toString().padLeft(2, '0')}',
                    style: kBodyLabelStyle,
                    textAlign: TextAlign.left,
                  ),
                  const SizedBox(
                    height: kVerticalSpacer,
                  ),
                ],
              ),
            ),
            ActorSlider(movieId: widget.media.id),
          ],
        ),
      ),
    );
  }
}
