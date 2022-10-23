import 'package:get_it/get_it.dart';
import 'package:movika/movie/data/data_sources/movie_remote_datasource.dart';
import 'package:movika/movie/data/repositories/MoviesRepository.dart';
import 'package:movika/movie/domain/repositories/movie_base_repository.dart';
import 'package:movika/movie/domain/use_cases/get_now_playing_movies.dart';
import 'package:movika/movie/domain/use_cases/get_popular_movies.dart';
import 'package:movika/movie/domain/use_cases/get_top_rated_movies.dart';
import 'package:movika/movie/presentation/manager/movies_bloc.dart';

final getIt = GetIt.asNewInstance();

class ServiceLocator {
  init() {
    //Bloc
    getIt.registerLazySingleton(() => MoviesBloc(getIt(), getIt(), getIt()));

    //Use cases
    getIt.registerLazySingleton(() => GetNowPlayingMoviesUseCase(getIt()));
    getIt.registerLazySingleton(() => GetTopRatedMoviesUseCase(getIt()));
    getIt.registerLazySingleton(() => GetPopularMoviesUseCase(getIt()));

    getIt.registerLazySingleton<BaseMovieRepository>(
        () => MoviesRepository(getIt()));
    getIt.registerLazySingleton<BaseMovieDataSource>(
        () => MovieRemoteDataSource());
  }
}
