import 'package:get_it/get_it.dart';
import 'package:movies/movies/data/data_sources/movies_remote_data_source.dart';
import 'package:movies/movies/data/repositories/movies_repository.dart';
import 'package:movies/movies/domain/repositories/base_movies_repository.dart';
import 'package:movies/movies/domain/use_cases/get_now_playing_movies_use_case.dart';
import 'package:movies/movies/presentation/controller/movies_bloc.dart';

final sl = GetIt.instance;

class ServicesLocator {
  void init() {
    sl.registerFactory(() => MoviesBloc(sl()));

    sl.registerLazySingleton(() => GetNowPlayingUseCase(sl()));

    sl.registerLazySingleton<BaseMoviesRepository>(
        () => MoviesRepository(sl()));

    sl.registerLazySingleton<BaseMoviesRemoteDataSource>(
        () => MoviesRemoteDataSource());
  }
}
