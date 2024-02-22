import 'package:dio/dio.dart';
import 'package:movies/core/error/exception.dart';
import 'package:movies/core/utils/app_constance.dart';
import 'package:movies/movies/data/models/movies_model.dart';
import 'package:movies/network/error_message_model.dart';

abstract class BaseMoviesRemoteDataSource {
  Future<List<MoviesModel>> getNowPlayingMovies();
  Future<List<MoviesModel>> getPopularMovies();
  Future<List<MoviesModel>> getTopRatedMovies();

}

class MoviesRemoteDataSource extends BaseMoviesRemoteDataSource{
  @override
  Future<List<MoviesModel>> getNowPlayingMovies() async {
    final response = await Dio().get(AppConstance.nowPlayingMoviePath);
    print(response);
    if (response.statusCode == 200) {
      return List<MoviesModel>.from((response.data["results"] as List)
          .map((e) => MoviesModel.fromJson(e)));
    }
    else {
      throw ServerException(
        errorMessageModel: ErrorMessageModel.fromJson(response.data)
      );
    }
  }
  @override
  Future<List<MoviesModel>> getPopularMovies() async {
    final response = await Dio().get(AppConstance.popularMoviePath);
    if (response.statusCode == 200) {
      return List<MoviesModel>.from((response.data["results"] as List)
          .map((e) => MoviesModel.fromJson(e)));
    }
    else {
      throw ServerException(
          errorMessageModel: ErrorMessageModel.fromJson(response.data)
      );
    }
  }
  @override
  Future<List<MoviesModel>> getTopRatedMovies() async {
    final response = await Dio().get(AppConstance.topRatedMoviePath);
    if (response.statusCode == 200) {
      return List<MoviesModel>.from((response.data["results"] as List)
          .map((e) => MoviesModel.fromJson(e)));
    }
    else {
      throw ServerException(
          errorMessageModel: ErrorMessageModel.fromJson(response.data)
      );
    }
  }
}
