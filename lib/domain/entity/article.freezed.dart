// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'article.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Article _$ArticleFromJson(Map<String, dynamic> json) {
  return _Article.fromJson(json);
}

/// @nodoc
class _$ArticleTearOff {
  const _$ArticleTearOff();

  _Article call(
      {required int id,
      required String title,
      required int likedCount,
      required int readingTime,
      required String emoji,
      required Map<String, dynamic> user}) {
    return _Article(
      id: id,
      title: title,
      likedCount: likedCount,
      readingTime: readingTime,
      emoji: emoji,
      user: user,
    );
  }

  Article fromJson(Map<String, Object> json) {
    return Article.fromJson(json);
  }
}

/// @nodoc
const $Article = _$ArticleTearOff();

/// @nodoc
mixin _$Article {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  int get likedCount => throw _privateConstructorUsedError;
  int get readingTime => throw _privateConstructorUsedError;
  String get emoji => throw _privateConstructorUsedError;
  Map<String, dynamic> get user => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ArticleCopyWith<Article> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticleCopyWith<$Res> {
  factory $ArticleCopyWith(Article value, $Res Function(Article) then) =
      _$ArticleCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String title,
      int likedCount,
      int readingTime,
      String emoji,
      Map<String, dynamic> user});
}

/// @nodoc
class _$ArticleCopyWithImpl<$Res> implements $ArticleCopyWith<$Res> {
  _$ArticleCopyWithImpl(this._value, this._then);

  final Article _value;
  // ignore: unused_field
  final $Res Function(Article) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? likedCount = freezed,
    Object? readingTime = freezed,
    Object? emoji = freezed,
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      likedCount: likedCount == freezed
          ? _value.likedCount
          : likedCount // ignore: cast_nullable_to_non_nullable
              as int,
      readingTime: readingTime == freezed
          ? _value.readingTime
          : readingTime // ignore: cast_nullable_to_non_nullable
              as int,
      emoji: emoji == freezed
          ? _value.emoji
          : emoji // ignore: cast_nullable_to_non_nullable
              as String,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
abstract class _$ArticleCopyWith<$Res> implements $ArticleCopyWith<$Res> {
  factory _$ArticleCopyWith(_Article value, $Res Function(_Article) then) =
      __$ArticleCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String title,
      int likedCount,
      int readingTime,
      String emoji,
      Map<String, dynamic> user});
}

/// @nodoc
class __$ArticleCopyWithImpl<$Res> extends _$ArticleCopyWithImpl<$Res>
    implements _$ArticleCopyWith<$Res> {
  __$ArticleCopyWithImpl(_Article _value, $Res Function(_Article) _then)
      : super(_value, (v) => _then(v as _Article));

  @override
  _Article get _value => super._value as _Article;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? likedCount = freezed,
    Object? readingTime = freezed,
    Object? emoji = freezed,
    Object? user = freezed,
  }) {
    return _then(_Article(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      likedCount: likedCount == freezed
          ? _value.likedCount
          : likedCount // ignore: cast_nullable_to_non_nullable
              as int,
      readingTime: readingTime == freezed
          ? _value.readingTime
          : readingTime // ignore: cast_nullable_to_non_nullable
              as int,
      emoji: emoji == freezed
          ? _value.emoji
          : emoji // ignore: cast_nullable_to_non_nullable
              as String,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Article with DiagnosticableTreeMixin implements _Article {
  const _$_Article(
      {required this.id,
      required this.title,
      required this.likedCount,
      required this.readingTime,
      required this.emoji,
      required this.user});

  factory _$_Article.fromJson(Map<String, dynamic> json) =>
      _$_$_ArticleFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final int likedCount;
  @override
  final int readingTime;
  @override
  final String emoji;
  @override
  final Map<String, dynamic> user;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Article(id: $id, title: $title, likedCount: $likedCount, readingTime: $readingTime, emoji: $emoji, user: $user)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Article'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('likedCount', likedCount))
      ..add(DiagnosticsProperty('readingTime', readingTime))
      ..add(DiagnosticsProperty('emoji', emoji))
      ..add(DiagnosticsProperty('user', user));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Article &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.likedCount, likedCount) ||
                const DeepCollectionEquality()
                    .equals(other.likedCount, likedCount)) &&
            (identical(other.readingTime, readingTime) ||
                const DeepCollectionEquality()
                    .equals(other.readingTime, readingTime)) &&
            (identical(other.emoji, emoji) ||
                const DeepCollectionEquality().equals(other.emoji, emoji)) &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(likedCount) ^
      const DeepCollectionEquality().hash(readingTime) ^
      const DeepCollectionEquality().hash(emoji) ^
      const DeepCollectionEquality().hash(user);

  @JsonKey(ignore: true)
  @override
  _$ArticleCopyWith<_Article> get copyWith =>
      __$ArticleCopyWithImpl<_Article>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ArticleToJson(this);
  }
}

abstract class _Article implements Article {
  const factory _Article(
      {required int id,
      required String title,
      required int likedCount,
      required int readingTime,
      required String emoji,
      required Map<String, dynamic> user}) = _$_Article;

  factory _Article.fromJson(Map<String, dynamic> json) = _$_Article.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override
  int get likedCount => throw _privateConstructorUsedError;
  @override
  int get readingTime => throw _privateConstructorUsedError;
  @override
  String get emoji => throw _privateConstructorUsedError;
  @override
  Map<String, dynamic> get user => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ArticleCopyWith<_Article> get copyWith =>
      throw _privateConstructorUsedError;
}
