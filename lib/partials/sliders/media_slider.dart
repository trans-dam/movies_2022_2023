import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:movies/models/media.dart';
import 'package:http/http.dart' as http;

class MediaSlider extends StatefulWidget {
  const MediaSlider({Key? key}) : super(key: key);

  @override
  State<MediaSlider> createState() => _MediaSliderState();
}

class _MediaSliderState extends State<MediaSlider> {
  final List<Media> _medias = [];

  void _fetchMedia() {
    http
        .get(Uri.parse(
            "https://api.themoviedb.org/3/discover/movie?sort_by=popularity.desc&api_key=fc0b570a0ec2e5a82a99bf4d8340e012&language=fr-fr"))
        .then((response) {
      if (response.statusCode == 200) {
        var responseBody = jsonDecode(response.body);
        for (var data in responseBody['results']) {
          Media tmp = Media.fromJson(data);
          setState(() {
            _medias.add(tmp);
          });
        }
      } else {
        throw Exception("Whooops voici le statusCode ${response.statusCode}");
      }
    }).onError((error, stackTrace) {
      debugPrintStack();
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _fetchMedia();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
