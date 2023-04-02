// ignore_for_file: invalid_annotation_target, depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_model.freezed.dart';
part 'movie_model.g.dart';

@freezed
class Movie with _$Movie {
  const factory Movie({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'title') required String title,
    @JsonKey(name: 'original_title') required String originalTitle,
    @JsonKey(name: 'overview') required String overview,
    @JsonKey(name: 'poster_path') required String? posterPath,
    @JsonKey(name: 'original_language') required String language,
    @JsonKey(name: 'release_date') required String releaseDate,
    @JsonKey(name: 'popularity') required double popularity,
    @JsonKey(name: 'adult') required bool adult,
  }) = __Movie;

  factory Movie.fromJson(Map<String, dynamic> json) => _$MovieFromJson(json);

  const Movie._();

  static const empty = Movie(
    id: 0,
    title: '',
    originalTitle: '',
    overview: '',
    posterPath: null,
    language: '',
    releaseDate: '',
    popularity: 0,
    adult: false,
  );

  bool get isEmpty => this == empty;
  bool get isNotEmpty => this != empty;
}
