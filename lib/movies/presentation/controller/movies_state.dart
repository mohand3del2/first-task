part of 'movies_bloc.dart';

abstract class MoviesState extends Equatable {
  const MoviesState(
      {this.nowPlayingMovies = const [],
      this.message = '',
      this.nowPlayingStates = RequestState.loading});
  final List<Movie> nowPlayingMovies;
  final RequestState nowPlayingStates;

  final String message;
  @override
  List<Object?> get props => [nowPlayingMovies, nowPlayingStates, message];
}

class MoviesInitial extends MoviesState {
  const MoviesInitial();

  @override
  List<Object> get props => [];
}
