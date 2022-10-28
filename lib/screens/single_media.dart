import 'package:flutter/material.dart';
import 'package:movies/models/media.dart';
import 'package:movies/models/media_detail.dart';
import 'package:movies/styles/constants.dart';

@immutable
class SingleMedia extends StatefulWidget {
  final Media media;
  final String type;

  const SingleMedia({required this.media, Key? key, required this.type})
      : super(key: key);

  @override
  State<SingleMedia> createState() => _SingleMediaState();
}

class _SingleMediaState extends State<SingleMedia> {
  MediaDetail? mediaDetail;

  void getMediaDetail() {
    print(
        'https://api.themoviedb.org/3/${widget.type}/${widget.media.id}?api_key=fc0b570a0ec2e5a82a99bf4d8340e012&language=fr-fr');
  }

  @override
  void initState() {
    super.initState();
    getMediaDetail();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
                "https://image.tmdb.org/t/p/w154/${widget.media.backdropPath}"),
            Text(
              widget.media.title,
              style: kLargeTitleStyle,
            ),
            Text(widget.media.overview),
          ],
        ),
      ),
    );
  }
}
