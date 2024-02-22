import 'package:dartz/dartz.dart';
import 'package:movies/core/error/exception.dart';
import 'package:movies/core/error/failure.dart';
import 'package:movies/movies/data/data_sources/movies_remote_data_source.dart';
import 'package:movies/movies/domain/entities/movies.dart';
import 'package:movies/movies/domain/repositories/base_movies_repository.dart';

class MoviesRepository extends BaseMoviesRepository {
  final BaseMoviesRemoteDataSource baseMoviesRemoteDataSource;

  MoviesRepository(this.baseMoviesRemoteDataSource);

  @override
  Future<Either<Failure ,List<Movie>>> getNowPlaying()async {
   final result = await baseMoviesRemoteDataSource.getNowPlayingMovies();

   try{
     return Right(result);
   } on ServerException catch(failure) {
     return Left(ServerFailure(failure.errorMessageModel.statusMessage));
   }

  }

  @override
  Future<Either<Failure ,List<Movie>>>  getPopularMovies() async{
    final result = await baseMoviesRemoteDataSource.getPopularMovies();

    try{
      return Right(result);
    } on ServerException catch(failure) {
      return Left(ServerFailure(failure.errorMessageModel.statusMessage));
    }
  }

  @override
  Future<Either<Failure ,List<Movie>>>  getTopRatedMovies() async{
    final result = await baseMoviesRemoteDataSource.getTopRatedMovies();

    try{
      return Right(result);
    } on ServerException catch(failure) {
      return Left(ServerFailure(failure.errorMessageModel.statusMessage));
    }
  }
}
