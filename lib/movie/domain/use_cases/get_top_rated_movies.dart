import 'package:dartz/dartz.dart';

import '../../../core/error/failure.dart';
import '../entities/movie.dart';
import '../repositories/movie_base_repository.dart';

class GetTopRatedMoviesUseCase{
  final BaseMovieRepository baseMovieRepository;

  GetTopRatedMoviesUseCase(this.baseMovieRepository);

  Future<Either<Failure, List<Movie>>> execute() async {
    return await baseMovieRepository.getTopRatedMovies();
  }
}