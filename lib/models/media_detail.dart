import 'package:flutter/foundation.dart';

// TODO : Check compatibility with (immutable)
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
}
