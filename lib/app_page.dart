import 'package:flutter/material.dart';
import 'package:zenn_riverpod/presentation/article_index_page/article_index_page.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.blue[50],
        primarySwatch: Colors.blue,
      ),
      home: const ArticleIndexPage(),
    );
  }
}
