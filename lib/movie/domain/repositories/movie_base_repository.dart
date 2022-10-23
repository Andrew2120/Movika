import 'package:dartz/dartz.dart';
import 'package:movika/movie/domain/entities/movie.dart';

import '../../../core/error/failure.dart';
import '../../data/data_sources/movie_remote_datasource.dart';

abstract class BaseMovieRepository {
  Future<Either<Failure, List<Movie>>> getNowPlaying();

  Future<Either<Failure, List<Movie>>> getPopularMovies();

  Future<Either<Failure, List<Movie>>> getTopRatedMovies();
}
