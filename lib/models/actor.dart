import 'package:flutter/cupertino.dart';

@immutable
class Actor {
  final String name;
  final double popularity;
  final String? profilePath;
  final String character;

  const Actor(
      {this.name = "",
      this.popularity = 0,
      this.profilePath = "",
      this.character = ""});

  factory Actor.fromJson(Map<String, dynamic> json) {
    return Actor(
      name: json['name'] as String,
      popularity: json['popularity'] as double,
      profilePath: json['profile_path'],
      character: json['character'] as String,
    );
  }

  @override
  String toString() {
    return '{name:$name, \n popularity:$popularity,\n profilePath:$profilePath,\n character:$character}';
  }
}
