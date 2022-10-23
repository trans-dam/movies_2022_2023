import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:movies/models/actor.dart';
import '../../cards/actor_card.dart';
import '../../styles/constants.dart';

@immutable
class ActorSlider extends StatelessWidget {
  final int movieId;

  const ActorSlider({required this.movieId, Key? key}) : super(key: key);

// A function that converts a response body into a List<Actor>.
  List<Actor> parseActors(String responseBody) {
    List<Actor> actors = [];
    final parsed = jsonDecode(responseBody);
    print(parsed['cast']);
    for (var data in parsed['cast']) {
      Actor actor = Actor.fromJson(data);
      print(actor);
      actors.add(actor);
    }

    return actors;
  }

  Future<List<Actor>> fetchActors() async {
    final response = await http.get(Uri.parse(
        'https://api.themoviedb.org/3/movie/$movieId/casts?api_key=fc0b570a0ec2e5a82a99bf4d8340e012&language=fr-fr'));

    // Use the compute function to run parsePhotos in a separate isolate.
    return compute(parseActors, response.body);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 320,
          child: FutureBuilder<List<Actor>>(
            future: fetchActors(),
            builder: (context, snapshot) {
              if (snapshot.hasError) {
                return const Text("Petit problème avec les acteurs");
              }
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(child: CircularProgressIndicator());
              }
              if (snapshot.connectionState == ConnectionState.done &&
                  snapshot.hasData) {
                final actors = snapshot.data!;
                return ListView.builder(
                  scrollDirection:Axis.horizontal,
                  itemCount: actors.length,
                  itemBuilder: (context, index) {
                    return ActorCard(
                      spacer: index == 0 ? kHorizontalSpacer : 0,
                      actor: actors[index],
                    );
                  },
                );
              }
              return const Text('Les acteurs arrivent…');
            },
          ),
        ),
        const SizedBox(
          height: kVerticalSpacer * 3,
        )
      ],
    );
  }
}
