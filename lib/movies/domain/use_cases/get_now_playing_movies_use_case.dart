import 'package:dartz/dartz.dart';
import 'package:movies/core/error/failure.dart';
import 'package:movies/movies/domain/entities/movies.dart';
import 'package:movies/movies/domain/repositories/base_movies_repository.dart';

class GetNowPlayingUseCase {
  final BaseMoviesRepository baseMoviesRepository; //Dependency injection

  GetNowPlayingUseCase(this.baseMoviesRepository);

  Future<Either<Failure ,List<Movie>>> execute()async{
    return await baseMoviesRepository.getNowPlaying();
  }

}