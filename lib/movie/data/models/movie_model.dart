import 'package:movika/movie/domain/entities/movie.dart';

class MovieModel extends Movie {
  const MovieModel(
      {required super.id,
      required super.title,
      required super.backdropPath,
      required super.genderIds,
      required super.overView,
      required super.releaseDate,
      required super.voteAvg});

  factory MovieModel.fromJson(Map<String, dynamic> map) => MovieModel(
      id: map["id"],
      title: map["title"],
      backdropPath: map["backdrop_path"],
      genderIds: List<int>.from(map["genre_ids"].map((e) => e)),
      overView: map["overview"],
      releaseDate: map["release_date"],
      voteAvg: map["vote_average"].toDouble());
}
