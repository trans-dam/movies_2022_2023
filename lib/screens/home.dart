import 'package:flutter/material.dart';
import 'package:movies/partials/navbar/nav_bar.dart';
import 'package:movies/partials/sliders/media_slider.dart';

import '../models/media.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);

  late Future<Media> futureMedia;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: const [
            NavBar(),
            MediaSlider(),
          ],
        ),
      ),
    );
  }
}
