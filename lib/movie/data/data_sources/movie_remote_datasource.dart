import 'package:dio/dio.dart';
import 'package:movika/core/error/exception.dart';
import 'package:movika/core/network/error_message_model.dart';
import 'package:movika/core/utils/app_constance.dart';
import 'package:movika/movie/data/models/movie_model.dart';

abstract class BaseMovieDataSource {


  Future<List<MovieModel>> getNowPlayingMovies();

  Future<List<MovieModel>> getPopularMovies();

  Future<List<MovieModel>> getTopRated();
}

class MovieRemoteDataSource extends BaseMovieDataSource {
  @override
  Future<List<MovieModel>> getNowPlayingMovies() async {
    final response = await Dio().get(AppConstance.moviesNowPlaying);

    if (response.statusCode == 200) {
      return List<MovieModel>.from((response.data["results"] as List)
          .map((e) => MovieModel.fromJson(e)));
    } else {
      throw ServerException(
          errorMessageModel: ErrorMessageModel.fromJson(response.data));
    }
  }

  @override
  Future<List<MovieModel>> getPopularMovies() async {
    final response = await Dio().get(AppConstance.moviesPopular);

    if (response.statusCode == 200) {
      return List<MovieModel>.from((response.data["results"] as List)
          .map((e) => MovieModel.fromJson(e)));
    } else {
      throw ServerException(
          errorMessageModel: ErrorMessageModel.fromJson(response.data));
    }
  }

  @override
  Future<List<MovieModel>> getTopRated() async {
    final response = await Dio().get(AppConstance.moviesTopRated);

    if (response.statusCode == 200) {
      return List<MovieModel>.from((response.data["results"] as List)
          .map((e) => MovieModel.fromJson(e)));
    } else {
      throw ServerException(
          errorMessageModel: ErrorMessageModel.fromJson(response.data));
    }
  }
}
