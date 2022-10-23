class Movie {
  final int id;
  final String title;
  final String backdropPath;
  final List<int> genderIds;
  final String overView;
  final double voteAvg;
  final String releaseDate;

  const Movie(
      {required this.id,
      required this.title,
      required this.backdropPath,
      required this.genderIds,
      required this.overView,
      required this.releaseDate,
      required this.voteAvg});
}
