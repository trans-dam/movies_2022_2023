import 'package:flutter/cupertino.dart';

@immutable
class Media {
  final int id;
  final String title;
  final String backdropPath;
  final String posterPath;
  final String overview;
  final double popularity;
  final double voteAverage;
  final DateTime releaseDate;

  const Media(
      {this.id = 0,
      this.title = "",
      this.backdropPath = "",
      this.posterPath = "",
      this.overview = "",
      this.popularity = 0,
      this.voteAverage = 0,
      required this.releaseDate});

  factory Media.fromJson(Map<String, dynamic> json) {
    return Media(
      id: json['id'],
      title: json['title'] ?? json['name'],
      backdropPath: json['backdrop_path'],
      posterPath: json['poster_path'],
      overview: json['overview'],
      popularity: json['popularity'].toDouble(),
      voteAverage: json['vote_average'].toDouble(),
      releaseDate:
          DateTime.parse(json['release_date'] ?? json['first_air_date']),
    );
  }

  @override
  String toString() {
    return 'Movie{movieId: $id, title: $title, backdropPath: $backdropPath, posterPath: $posterPath, overview: $overview, popularity: $popularity, voteAverage: $voteAverage, releaseDate: $releaseDate}';
  }
}