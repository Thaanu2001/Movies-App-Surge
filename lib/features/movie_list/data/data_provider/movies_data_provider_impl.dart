import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../core/constants/api_constants.dart';
import '../../../../core/model/movie_model.dart';
import '../failure/movies_failure.dart';
import 'movies_data_provider.dart';

class MoviesDataProviderImpl extends MoviesDataProvider {
  MoviesDataProviderImpl();

  @override
  Future<List<Movie>> fetchMovies({required int pageNumber}) async {
    try {
      final SharedPreferences prefs = await SharedPreferences.getInstance();

      final connection = await InternetConnectionChecker().hasConnection;
      if (connection == true) {
        String endpoint =
            '${ApiConstants.topRatedUrl}?api_key=${ApiConstants.apiKey}&page=$pageNumber';

        final response = await Dio().get(endpoint);

        if (response.statusCode == 200) {
          final List results = response.data['results'];

          await prefs.setStringList('API_Movie_$pageNumber',
              results.map((e) => json.encode(e)).toList());

          return results.map((e) => Movie.fromJson(e)).toList();
        } else {
          throw MoviesFailure.fromCode(response.statusCode);
        }
      } else {
        if (prefs.containsKey('API_Movie_$pageNumber')) {
          final response = prefs.getStringList('API_Movie_$pageNumber') ?? [];

          if (response.isNotEmpty) {
            return response.map((e) => Movie.fromJson(json.decode(e))).toList();
          } else {
            throw MoviesFailure.fromCode(408);
          }
        } else {
          throw MoviesFailure.fromCode(408);
        }
      }
    } on DioError catch (e) {
      if (e.response != null) {
        throw MoviesFailure.fromCode(e.response!.statusCode);
      } else {
        throw const MoviesFailure();
      }
    } on MoviesFailure catch (e) {
      throw MoviesFailure(e.message);
    } catch (e) {
      print(e);
      throw const MoviesFailure();
    }
  }
}
