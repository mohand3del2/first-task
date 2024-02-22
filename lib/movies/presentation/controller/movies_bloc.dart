import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:movies/core/utils/enums.dart';
import 'package:movies/movies/domain/use_cases/get_now_playing_movies_use_case.dart';

import '../../domain/entities/movies.dart';

part 'movies_event.dart';
part 'movies_state.dart';

class MoviesBloc extends Bloc<MoviesEvent, MoviesState> {
  final GetNowPlayingUseCase getNowPlayingUseCase;
  MoviesBloc(this.getNowPlayingUseCase) : super(const MoviesInitial()) {
    on<MoviesEvent>((event, emit) async {

      final result = await getNowPlayingUseCase.execute();
    });
  }
}
