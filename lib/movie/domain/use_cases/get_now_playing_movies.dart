import 'package:dartz/dartz.dart';
import 'package:movika/movie/domain/entities/movie.dart';
import 'package:movika/movie/domain/repositories/movie_base_repository.dart';

import '../../../core/error/failure.dart';

class GetNowPlayingMoviesUseCase {
  final BaseMovieRepository baseMovieRepository;

  GetNowPlayingMoviesUseCase(this.baseMovieRepository);

  Future<Either<Failure, List<Movie>>> execute() async {
    return await baseMovieRepository.getNowPlaying();
  }
}
