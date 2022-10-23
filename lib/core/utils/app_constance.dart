class AppConstance {
  static const baseUrl = "https://api.themoviedb.org/3";
  static const moviesPopular = "$baseUrl/movie/popular?api_key=$apiKey";
  static const moviesNowPlaying = "$baseUrl/movie/now_playing?api_key=$apiKey";
  static const moviesTopRated = "$baseUrl/movie/top_rated?api_key=$apiKey";
  static const apiKey = "6a3146db2054e6bcd8cb31b16b8100ed";
  static const baseImageUrl = "https://image.tmdb.org/t/p/w500";
  static String imageUrl(String path)=>"$baseImageUrl$path";
}
