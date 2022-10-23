import 'package:movika/core/utils/enums.dart';
import 'package:movika/movie/domain/use_cases/get_now_playing_movies.dart';
import 'package:movika/movie/domain/use_cases/get_popular_movies.dart';
import 'package:movika/movie/domain/use_cases/get_top_rated_movies.dart';
import 'package:movika/movie/presentation/manager/movies_event.dart';
import 'package:movika/movie/presentation/manager/movies_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MoviesBloc extends Bloc<MoviesEvent, MoviesState> {
  final GetNowPlayingMoviesUseCase getNowPlayingMoviesUseCase;
  final GetPopularMoviesUseCase getPopularMoviesUseCase;
  final GetTopRatedMoviesUseCase getTopRatedMoviesUseCase;

  MoviesBloc(this.getNowPlayingMoviesUseCase, this.getPopularMoviesUseCase,
      this.getTopRatedMoviesUseCase)
      : super(MoviesState()) {
    on<GetNowPlayingMoviesEvent>((event, emit) async {
      final results = await getNowPlayingMoviesUseCase.execute();
      emit(state.copyWith(nowPlayingRequestState: RequestState.loaded));

      results.fold(
          (l) => emit(state.copyWith(
              nowPlayingRequestState: RequestState.error,
              nowPlayingErrorMessage: l.message)),
          (r) => emit(state.copyWith(
              nowPlayingMoviesList: r,
              nowPlayingRequestState: RequestState.loaded)));
    });

    on<GetPopularMoviesEvent>((event, emit) async {
      final results = await getPopularMoviesUseCase.execute();
      emit(state.copyWith(popularRequestState: RequestState.loaded));

      results.fold(
          (l) => emit(state.copyWith(
              popularRequestState: RequestState.error,
              popularErrorMessage: l.message)),
          (r) => emit(state.copyWith(
              popularMoviesList: r, popularRequestState: RequestState.loaded)));
    });

    on<GetTopRatedMoviesEvent>((event, emit) async {
      final results = await getTopRatedMoviesUseCase.execute();
      emit(state.copyWith(topRatedRequestState: RequestState.loaded));

      results.fold(
          (l) => emit(state.copyWith(
              topRatedRequestState: RequestState.error,
              topRatedErrorMessage: l.message)),
          (r) => emit(state.copyWith(
              topRatedMoviesList: r,
              topRatedRequestState: RequestState.loaded)));
    });
  }
}
