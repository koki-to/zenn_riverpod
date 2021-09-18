import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:zenn_riverpod/domain/entity/article.dart';
import 'package:zenn_riverpod/domain/repository/article_repository.dart';
import 'package:zenn_riverpod/infrastructure/article_repository_impl.dart';

final articleProvider =
    ChangeNotifierProvider((ref) => ArticleIndexModel(ref.read));

class ArticleIndexModel extends ChangeNotifier {
  ArticleIndexModel(this._reader) {
    _init();
  }
  final Reader _reader;
  List<Article> articles = [];
  bool isLoading = true;
  bool visible = false;
  late final ArticleRepository _articleRepository =
      _reader(articleRepositoryProvider);
  Future<void> _init() async {
    await fetchArticles();
  }

  Future<void> fetchArticles() async {
    try {
      articles = await _articleRepository.fetchArticles();
      endLoading();
      notifyListeners();
    } catch (e) {
      print(e);
    }
  }

  Future<void> bubbleCheck() async {
    visibleTrue();
    await Future<dynamic>.delayed(const Duration(seconds: 2));
    visibleFalse();
  }

  void visibleTrue() {
    visible = true;
    notifyListeners();
  }

  void visibleFalse() {
    visible = false;
    notifyListeners();
  }

  void startLoading() {
    isLoading = true;
    notifyListeners();
  }

  void endLoading() {
    isLoading = false;
    notifyListeners();
  }
}
