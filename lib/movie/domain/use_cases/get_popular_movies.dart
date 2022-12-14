import 'package:dartz/dartz.dart';

import '../../../core/error/failure.dart';
import '../entities/movie.dart';
import '../repositories/movie_base_repository.dart';

class GetPopularMoviesUseCase{
  final BaseMovieRepository baseMovieRepository;

  GetPopularMoviesUseCase(this.baseMovieRepository);

  Future<Either<Failure, List<Movie>>>execute() async {
    return await baseMovieRepository.getPopularMovies();
  }
}