
class AppConstance {
  static const baseUrl = 'https://api.themoviedb.org/3';
  static const apiKey = 'ee7d7ec3ecdc6815b20b16b082d3224b';

  static const String nowPlayingMoviePath = '$baseUrl/movie/now_playing?api_key=$apiKey';

  static const String popularMoviePath = '$baseUrl/movie/popular?api_key=$apiKey';

  static const String topRatedMoviePath = '$baseUrl/movie/top_rated?api_key=$apiKey';

  static const String baseImageUrl = 'https://image.tmdb.org/t/t/w500';

  static String imageUrl(String path) => '$baseImageUrl$path';

}