import 'package:dartz/dartz.dart';
import 'package:movika/core/error/exception.dart';
import 'package:movika/core/error/failure.dart';
import 'package:movika/movie/data/data_sources/movie_remote_datasource.dart';
import 'package:movika/movie/data/models/movie_model.dart';
import 'package:movika/movie/domain/entities/movie.dart';
import 'package:movika/movie/domain/repositories/movie_base_repository.dart';

class MoviesRepository extends BaseMovieRepository {
  final BaseMovieDataSource baseMovieDataSource;

  MoviesRepository(this.baseMovieDataSource);

  @override
  Future<Either<Failure, List<Movie>>> getNowPlaying() async {
    final results = await baseMovieDataSource.getNowPlayingMovies();
    try {
      return Right(results);
    } on ServerException catch (failure) {
      return Left(ServerFailure(failure.errorMessageModel.statusMessage));
    }
  }

  @override
  Future<Either<Failure, List<Movie>>> getPopularMovies() async {
    final results = await baseMovieDataSource.getPopularMovies();
    try {
      return Right(results);
    } on ServerException catch (failure) {
      return Left(ServerFailure(failure.errorMessageModel.statusMessage));
    }
  }

  @override
  Future<Either<Failure, List<Movie>>> getTopRatedMovies() async {
    final results = await baseMovieDataSource.getTopRated();
    try {
      print(results);
      return Right(results);
    } on ServerException catch (failure) {
      print(failure);

      return Left(ServerFailure(failure.errorMessageModel.statusMessage));
    }
  }
}
