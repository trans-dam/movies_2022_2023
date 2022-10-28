import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:movies/cards/media_card.dart';
import '../../models/media.dart';
import '../../styles/constants.dart';
import '../headers/section_header.dart';

class MediaSlider extends StatefulWidget {
  const MediaSlider(
      {required this.type,
      required this.title,
      required this.subtitle,
      Key? key})
      : super(key: key);
  final String type;
  final String title;
  final String subtitle;

  @override
  State<MediaSlider> createState() => _MediaSliderState();
}

class _MediaSliderState extends State<MediaSlider> {
  final List<Media> _medias = [];

  int _currentMovie = 0;

  void getMediasFromAPI() {
    http
        .get(Uri.parse(
            'https://api.themoviedb.org/3/discover/${widget.type}?sort_by=popularity.desc&api_key=fc0b570a0ec2e5a82a99bf4d8340e012&language=fr-fr'))
        .then((response) {
      if (response.statusCode == 200) {
        dynamic datas = jsonDecode(response.body);
        for (dynamic data in datas['results']) {
          try {
            Media media = Media.fromJson(data);
            setState(() {
              _medias.add(media);
            });
          } catch (error) {
            print(error.toString());
          }
        }
      } else {
        debugPrint('Oups... mauvaise réponse');
      }
    }).onError((error, stackTrace) {
      debugPrintStack(stackTrace: stackTrace);
    });
  }

  @override
  void initState() {
    super.initState();
    getMediasFromAPI();
  }

  Widget updateIndicators() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: _medias.map((course) {
        var index = _medias.indexOf(course);
        return Container(
          width: 7,
          height: 7,
          margin: EdgeInsets.only(
              right:
                  _currentMovie - 1 == index || _currentMovie == index ? 0 : 7),
          decoration: BoxDecoration(
              color: (_currentMovie - 1 == index ||
                      _currentMovie == index ||
                      _currentMovie + 1 == index)
                  ? kMainTextColor
                  : kMainTextColor.withOpacity(0.22)),
        );
      }).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SectionHeader(
          title: widget.title,
          subTitle: widget.subtitle,
        ),
        SizedBox(
          height: 350,
          child: PageView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: _medias.length,
              controller: PageController(initialPage: 1, viewportFraction: 0.4),
              padEnds: false,
              onPageChanged: (index) {
                setState(() {
                  _currentMovie = index;
                });
              },
              itemBuilder: (BuildContext context, int index) {
                return Opacity(
                  opacity: _currentMovie == index ? 1 : 0.7,
                  child: MediaCard(
                      media: _medias[index],
                      type:widget.type,
                      isLast: index == _medias.length - 1),
                );
              }),
        ),
        updateIndicators(),
      ],
    );
  }
}
