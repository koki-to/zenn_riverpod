import 'package:zenn_riverpod/domain/entity/article.dart';

abstract class ArticleRepository {
  Future<List<Article>> fetchArticles();
}
