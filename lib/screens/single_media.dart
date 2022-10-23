import 'package:flutter/material.dart';
import 'package:movies/models/media.dart';
import 'package:movies/styles/constants.dart';

class SingleMedia extends StatelessWidget {
  const SingleMedia({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final media = ModalRoute.of(context)!.settings.arguments as Media;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network("https://image.tmdb.org/t/p/w154/${media.backdropPath}"),
            Text(
              media.title,
              style: kLargeTitleStyle,
            ),
            Text(media.overview),
          ],
        ),
      ),
    );
  }
}
