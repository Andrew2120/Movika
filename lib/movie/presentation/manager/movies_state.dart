import 'package:movika/core/utils/enums.dart';

import '../../domain/entities/movie.dart';

class MoviesState {
  final List<Movie> nowPlayingMoviesList;
  final RequestState nowPlayingRequestState;
  final String nowPlayingErrorMessage;
  final List<Movie> popularMoviesList;
  final RequestState popularRequestState;
  final String popularErrorMessage;
  final List<Movie> topRatedMoviesList;
  final RequestState topRatedRequestState;
  final String topRatedErrorMessage;

  MoviesState({
    this.nowPlayingMoviesList = const [],
    this.nowPlayingRequestState = RequestState.loading,
    this.nowPlayingErrorMessage = "",
    this.popularMoviesList = const [],
    this.popularRequestState = RequestState.loading,
    this.popularErrorMessage = "",
    this.topRatedMoviesList = const [],
    this.topRatedRequestState = RequestState.loading,
    this.topRatedErrorMessage = "",
  });

  MoviesState copyWith(
      {List<Movie>? nowPlayingMoviesList,
      RequestState? nowPlayingRequestState,
      String? nowPlayingErrorMessage,
      List<Movie>? popularMoviesList,
      RequestState? popularRequestState,
      String? popularErrorMessage,
      List<Movie>? topRatedMoviesList,
      RequestState? topRatedRequestState,
      String? topRatedErrorMessage}) {
    return MoviesState(
      nowPlayingMoviesList: nowPlayingMoviesList ?? this.nowPlayingMoviesList,
      nowPlayingErrorMessage:
          nowPlayingErrorMessage ?? this.nowPlayingErrorMessage,
      nowPlayingRequestState:
          nowPlayingRequestState ?? this.nowPlayingRequestState,
      popularRequestState: popularRequestState ?? this.popularRequestState,
      popularErrorMessage: popularErrorMessage ?? this.popularErrorMessage,
      popularMoviesList: popularMoviesList ?? this.popularMoviesList,
      topRatedMoviesList: topRatedMoviesList ?? this.topRatedMoviesList,
      topRatedErrorMessage: topRatedErrorMessage ?? this.topRatedErrorMessage,
      topRatedRequestState: topRatedRequestState ?? this.topRatedRequestState,
    );
  }
}
