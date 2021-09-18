// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Article _$_$_ArticleFromJson(Map<String, dynamic> json) {
  return _$_Article(
    id: json['id'] as int,
    title: json['title'] as String,
    likedCount: json['likedCount'] as int,
    readingTime: json['readingTime'] as int,
    emoji: json['emoji'] as String,
    user: json['user'] as Map<String, dynamic>,
  );
}

Map<String, dynamic> _$_$_ArticleToJson(_$_Article instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'likedCount': instance.likedCount,
      'readingTime': instance.readingTime,
      'emoji': instance.emoji,
      'user': instance.user,
    };
