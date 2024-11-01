import 'dart:async';
import 'dart:convert';
import 'package:netflix_clone/common/utils.dart';
import 'package:netflix_clone/models/movie_Recommendation_models.dart';
import 'package:netflix_clone/models/movie_detailed_model.dart';
import 'package:netflix_clone/models/movie_models.dart';
import 'package:http/http.dart' as http;
import 'package:netflix_clone/models/search_model.dart';
import 'package:netflix_clone/models/tv_series_model.dart';

const baseUrl = "https://api.themoviedb.org/3/";
var key = "?api_key=$apiKey";
late String endpoint;

class ApiServices {
  Future<MovieModel> getUpcomingMovies() async {
    endpoint = "movie/upcoming";
    final url = "$baseUrl$endpoint$key";
    final response = await http.get(Uri.parse(url));
    print(response);
    if (response.statusCode == 200) {
      print("successs................");
      return MovieModel.fromJson(jsonDecode(response.body));
    }
    throw Exception("faild to load upcoming movies");
  }

  Future<MovieModel> getNowMovies() async {
    endpoint = "movie/now_playing";
    final url = "$baseUrl$endpoint$key";
    final Response = await http.get(Uri.parse(url));
    if (Response.statusCode == 200) {
      print("successs................");
      return MovieModel.fromJson(jsonDecode(Response.body));
    }
    throw Exception("faild to load now playing movies");
  }

  Future<TvSeriesModel> getTopRatedSeries() async {
    endpoint = "tv/top_rated";
    final url = "$baseUrl$endpoint$key";
    final response = await http.get(Uri.parse(url));
    print(response);
    if (response.statusCode == 200) {
      print("successs................");
      print(response.body);
      return TvSeriesModel.fromJson(jsonDecode(response.body));
    }
    throw Exception("faild to load top rated tv series");
  }

Future<MovieRecommendationsModel> getPopularMovies() async {
    endpoint = "movie/popular";
    final url = "$baseUrl$endpoint$key";
    final response = await http.get(Uri.parse(url));
   
    if (response.statusCode == 200) {
      print("successs................");
      print(response.body);
      return MovieRecommendationsModel.fromJson(jsonDecode(response.body));
    }
    throw Exception("faild to load popular movies");
  }


  Future<SearchModel> getSearchMovie(String searchText) async {
    endpoint = "search/movie?query=$searchText";
    final url = "$baseUrl$endpoint";
    
    final response = await http.get(Uri.parse(url), headers: {
      'Authorization':
          'Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiJiZTA0NzVlMzYyYzhiMmZkZDI1MjE1MTM1ODU3ZmUzYSIsIm5iZiI6MTczMDIxNTg4NC41Nzk1NDYsInN1YiI6IjY3MWIxMjE4NzY5MTA3ZDc3YjQ3YTk2MSIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.dLKZ-hp1C6yfyVuyfYboMrirJOhbhIARn-pwdGOkNBw'
    });
    print(response);
    if (response.statusCode == 200) {
      print("successs................");
      print(response.body);
      return SearchModel.fromJson(jsonDecode(response.body));
    }
    throw Exception("faild to load search movie");
  }


   Future<MovieDetailModel> getMovieDetail(int movieId) async {
    endpoint = "movie/$movieId";
    final url = "$baseUrl$endpoint$key";
   
    final response = await http.get(Uri.parse(url) );

    if (response.statusCode == 200) {
      print("successs.........detailedMovie.......");
      
      return MovieDetailModel.fromJson(jsonDecode(response.body));
    }
    throw Exception("faild to load movie detailed");
  }
  Future<MovieRecommendationsModel> getMovieRecommendation(int movieId) async {
    endpoint = "movie/$movieId/recommendations";
    final url = "$baseUrl$endpoint$key";
   print("-----recomendation url$url----------");
    final response = await http.get(Uri.parse(url) );

    if (response.statusCode == 200) {
      print("successs.........detailedMovie.......");
      print(response.body);
      return MovieRecommendationsModel.fromJson(jsonDecode(response.body));
    }
    throw Exception("faild to load mpre like this");
  }
}
