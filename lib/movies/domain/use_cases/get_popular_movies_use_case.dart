import 'package:dartz/dartz.dart';
import 'package:movies/movies/domain/entities/movies.dart';
import 'package:movies/movies/domain/repositories/base_movies_repository.dart';

import '../../../core/error/failure.dart';

class GetPopularUseCase {
  final BaseMoviesRepository baseMoviesRepository; //Dependency injection

  GetPopularUseCase(this.baseMoviesRepository);

  Future<Either<Failure ,List<Movie>>> execute()async{
    return await baseMoviesRepository.getPopularMovies();
  }

}