// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$__Movie _$$__MovieFromJson(Map<String, dynamic> json) => _$__Movie(
      id: json['id'] as int,
      title: json['title'] as String,
      originalTitle: json['original_title'] as String,
      overview: json['overview'] as String,
      posterPath: json['poster_path'] as String?,
      language: json['original_language'] as String,
      releaseDate: json['release_date'] as String,
      popularity: (json['popularity'] as num).toDouble(),
      adult: json['adult'] as bool,
    );

Map<String, dynamic> _$$__MovieToJson(_$__Movie instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'original_title': instance.originalTitle,
      'overview': instance.overview,
      'poster_path': instance.posterPath,
      'original_language': instance.language,
      'release_date': instance.releaseDate,
      'popularity': instance.popularity,
      'adult': instance.adult,
    };
