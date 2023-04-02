// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Movie _$MovieFromJson(Map<String, dynamic> json) {
  return __Movie.fromJson(json);
}

/// @nodoc
mixin _$Movie {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'original_title')
  String get originalTitle => throw _privateConstructorUsedError;
  @JsonKey(name: 'overview')
  String get overview => throw _privateConstructorUsedError;
  @JsonKey(name: 'poster_path')
  String? get posterPath => throw _privateConstructorUsedError;
  @JsonKey(name: 'original_language')
  String get language => throw _privateConstructorUsedError;
  @JsonKey(name: 'release_date')
  String get releaseDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'popularity')
  double get popularity => throw _privateConstructorUsedError;
  @JsonKey(name: 'adult')
  bool get adult => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieCopyWith<Movie> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieCopyWith<$Res> {
  factory $MovieCopyWith(Movie value, $Res Function(Movie) then) =
      _$MovieCopyWithImpl<$Res, Movie>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'original_title') String originalTitle,
      @JsonKey(name: 'overview') String overview,
      @JsonKey(name: 'poster_path') String? posterPath,
      @JsonKey(name: 'original_language') String language,
      @JsonKey(name: 'release_date') String releaseDate,
      @JsonKey(name: 'popularity') double popularity,
      @JsonKey(name: 'adult') bool adult});
}

/// @nodoc
class _$MovieCopyWithImpl<$Res, $Val extends Movie>
    implements $MovieCopyWith<$Res> {
  _$MovieCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? originalTitle = null,
    Object? overview = null,
    Object? posterPath = freezed,
    Object? language = null,
    Object? releaseDate = null,
    Object? popularity = null,
    Object? adult = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      originalTitle: null == originalTitle
          ? _value.originalTitle
          : originalTitle // ignore: cast_nullable_to_non_nullable
              as String,
      overview: null == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
      posterPath: freezed == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      releaseDate: null == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String,
      popularity: null == popularity
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as double,
      adult: null == adult
          ? _value.adult
          : adult // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$__MovieCopyWith<$Res> implements $MovieCopyWith<$Res> {
  factory _$$__MovieCopyWith(_$__Movie value, $Res Function(_$__Movie) then) =
      __$$__MovieCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'original_title') String originalTitle,
      @JsonKey(name: 'overview') String overview,
      @JsonKey(name: 'poster_path') String? posterPath,
      @JsonKey(name: 'original_language') String language,
      @JsonKey(name: 'release_date') String releaseDate,
      @JsonKey(name: 'popularity') double popularity,
      @JsonKey(name: 'adult') bool adult});
}

/// @nodoc
class __$$__MovieCopyWithImpl<$Res> extends _$MovieCopyWithImpl<$Res, _$__Movie>
    implements _$$__MovieCopyWith<$Res> {
  __$$__MovieCopyWithImpl(_$__Movie _value, $Res Function(_$__Movie) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? originalTitle = null,
    Object? overview = null,
    Object? posterPath = freezed,
    Object? language = null,
    Object? releaseDate = null,
    Object? popularity = null,
    Object? adult = null,
  }) {
    return _then(_$__Movie(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      originalTitle: null == originalTitle
          ? _value.originalTitle
          : originalTitle // ignore: cast_nullable_to_non_nullable
              as String,
      overview: null == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
      posterPath: freezed == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      releaseDate: null == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String,
      popularity: null == popularity
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as double,
      adult: null == adult
          ? _value.adult
          : adult // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$__Movie extends __Movie {
  const _$__Movie(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'title') required this.title,
      @JsonKey(name: 'original_title') required this.originalTitle,
      @JsonKey(name: 'overview') required this.overview,
      @JsonKey(name: 'poster_path') required this.posterPath,
      @JsonKey(name: 'original_language') required this.language,
      @JsonKey(name: 'release_date') required this.releaseDate,
      @JsonKey(name: 'popularity') required this.popularity,
      @JsonKey(name: 'adult') required this.adult})
      : super._();

  factory _$__Movie.fromJson(Map<String, dynamic> json) =>
      _$$__MovieFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'title')
  final String title;
  @override
  @JsonKey(name: 'original_title')
  final String originalTitle;
  @override
  @JsonKey(name: 'overview')
  final String overview;
  @override
  @JsonKey(name: 'poster_path')
  final String? posterPath;
  @override
  @JsonKey(name: 'original_language')
  final String language;
  @override
  @JsonKey(name: 'release_date')
  final String releaseDate;
  @override
  @JsonKey(name: 'popularity')
  final double popularity;
  @override
  @JsonKey(name: 'adult')
  final bool adult;

  @override
  String toString() {
    return 'Movie(id: $id, title: $title, originalTitle: $originalTitle, overview: $overview, posterPath: $posterPath, language: $language, releaseDate: $releaseDate, popularity: $popularity, adult: $adult)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$__Movie &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.originalTitle, originalTitle) ||
                other.originalTitle == originalTitle) &&
            (identical(other.overview, overview) ||
                other.overview == overview) &&
            (identical(other.posterPath, posterPath) ||
                other.posterPath == posterPath) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.releaseDate, releaseDate) ||
                other.releaseDate == releaseDate) &&
            (identical(other.popularity, popularity) ||
                other.popularity == popularity) &&
            (identical(other.adult, adult) || other.adult == adult));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, originalTitle,
      overview, posterPath, language, releaseDate, popularity, adult);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$__MovieCopyWith<_$__Movie> get copyWith =>
      __$$__MovieCopyWithImpl<_$__Movie>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$__MovieToJson(
      this,
    );
  }
}

abstract class __Movie extends Movie {
  const factory __Movie(
      {@JsonKey(name: 'id') required final int id,
      @JsonKey(name: 'title') required final String title,
      @JsonKey(name: 'original_title') required final String originalTitle,
      @JsonKey(name: 'overview') required final String overview,
      @JsonKey(name: 'poster_path') required final String? posterPath,
      @JsonKey(name: 'original_language') required final String language,
      @JsonKey(name: 'release_date') required final String releaseDate,
      @JsonKey(name: 'popularity') required final double popularity,
      @JsonKey(name: 'adult') required final bool adult}) = _$__Movie;
  const __Movie._() : super._();

  factory __Movie.fromJson(Map<String, dynamic> json) = _$__Movie.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'title')
  String get title;
  @override
  @JsonKey(name: 'original_title')
  String get originalTitle;
  @override
  @JsonKey(name: 'overview')
  String get overview;
  @override
  @JsonKey(name: 'poster_path')
  String? get posterPath;
  @override
  @JsonKey(name: 'original_language')
  String get language;
  @override
  @JsonKey(name: 'release_date')
  String get releaseDate;
  @override
  @JsonKey(name: 'popularity')
  double get popularity;
  @override
  @JsonKey(name: 'adult')
  bool get adult;
  @override
  @JsonKey(ignore: true)
  _$$__MovieCopyWith<_$__Movie> get copyWith =>
      throw _privateConstructorUsedError;
}
