import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../../models/media.dart';

class MediaSlider extends StatefulWidget {
  const MediaSlider({Key? key}) : super(key: key);

  @override
  State<MediaSlider> createState() => _MediaSliderState();
}

class _MediaSliderState extends State<MediaSlider> {
  final List<Media> _medias = [];

  void fetchMedia() {
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
              print(media);
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
    fetchMedia();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
