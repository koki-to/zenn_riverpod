import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:zenn_riverpod/domain/entity/article.dart';
import 'package:zenn_riverpod/domain/repository/article_repository.dart';

final articleRepositoryProvider = Provider((ref) => ArticleRepositoryImpl());

class ArticleRepositoryImpl implements ArticleRepository {
  final Dio _dio = Dio();
  @override
  Future<List<Article>> fetchArticles() async {
    try {
      _dio.interceptors
          .add(LogInterceptor(requestBody: true, responseBody: true));
      // 入ってくる値をgenericsする
      final res = await _dio
          .get<List<dynamic>>('https://zenn-api.netlify.app/trendTech.json');
      final resData = res.data!;
      final articleData = resData
          .map((dynamic json) => Article.fromJson(json as Map<String, dynamic>))
          .toList();
      return articleData;
    } on DioError catch (e) {
      throw Exception('値の取得に失敗しました');
    }
  }
}
