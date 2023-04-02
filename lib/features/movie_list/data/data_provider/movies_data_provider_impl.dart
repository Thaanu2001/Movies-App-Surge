import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:internet_connection_checker/internet_connection_checker.dart';

import '../../../../core/constants/api_constants.dart';
import '../../../../core/model/movie_model.dart';
import '../failure/movies_failure.dart';
import 'movies_data_provider.dart';

class MoviesDataProviderImpl extends MoviesDataProvider {
  MoviesDataProviderImpl();

  @override
  Future<List<Movie>> fetchMovies({required int pageNumber}) async {
    try {
      final connection = await InternetConnectionChecker().hasConnection;
      if (connection == true) {
        String endpoint =
            '${ApiConstants.topRatedUrl}?api_key=${ApiConstants.apiKey}&page=$pageNumber';

        final response = await http.get(Uri.parse(endpoint));

        if (response.statusCode == 200) {
          final List results = jsonDecode(response.body)['results'];
          return results.map((e) => Movie.fromJson(e)).toList();
        } else {
          throw MoviesFailure.fromCode(response.statusCode);
        }
      } else {
        throw MoviesFailure.fromCode(408);
      }
    } on MoviesFailure catch (e) {
      throw MoviesFailure(e.message);
    } catch (e) {
      throw const MoviesFailure();
    }
  }
}
