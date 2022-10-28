import 'package:flutter/foundation.dart';

@immutable
class MediaDetail {
  final String homePage;
  final String tagline;
  final int runtime;
  final List<dynamic> genres;

  const MediaDetail(
      {required this.homePage,
      required this.tagline,
      required this.runtime,
      required this.genres});

  factory MediaDetail.fromJson(Map<String, dynamic> json) {
    return MediaDetail(
        homePage: json['homepage'] ?? "",
        tagline: json['tagline'] ?? "",
        runtime: json['runtime'] ?? 0,
        genres: json['genres'] ?? []);
  }

  @override
  String toString() {
    return "{homePage : $homePage,tagline : $tagline,runtime : $runtime,genres : $genres}";
  }
}
