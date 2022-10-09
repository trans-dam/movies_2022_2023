import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:movies/cards/media_card.dart';
import '../../models/media.dart';

class MediaSlider extends StatefulWidget {
  MediaSlider({Key? key}) : super(key: key);

  @override
  State<MediaSlider> createState() => _MediaSliderState();
}

class _MediaSliderState extends State<MediaSlider> {
  final List<Media> _medias = [];

  void getMediasFromAPI() {
    http
        .get(Uri.parse(
            'https://api.themoviedb.org/3/discover/movie?sort_by=popularity.desc&api_key=fc0b570a0ec2e5a82a99bf4d8340e012&language=fr-fr'))
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
    }).onError((error, stackTrace){
      debugPrintStack(stackTrace: stackTrace);
    });
  }

  @override
  void initState() {
    super.initState();
    getMediasFromAPI();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(

      height: 350,
      child: PageView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: _medias.length,
          controller: PageController(initialPage: 1, viewportFraction: 0.4),
          padEnds: false,
          onPageChanged: (index) {
            setState(() {
              //_currentMovie = index;
            });
          },
          itemBuilder: (BuildContext context, int index) {
            return Opacity(
                //opacity: _currentMovie == index ? 1 : 0.7,
                opacity: 1,
                child:
                MediaCard(_medias[index], index == _medias.length - 1));
          }),
    );
  }
}
