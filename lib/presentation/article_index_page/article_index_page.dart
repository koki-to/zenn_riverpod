import 'package:auto_animated/auto_animated.dart';
import 'package:bubble/bubble.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:zenn_riverpod/common/widget/articles_tile.dart';
import 'package:zenn_riverpod/presentation/article_index_page/article_index_model.dart';

class ArticleIndexPage extends HookWidget {
  const ArticleIndexPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final articleModel = useProvider(articleProvider);
    final articles = articleModel.articles;
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Zenn',
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: false,
          backgroundColor: Colors.white,
          bottom: const TabBar(
            tabs: <Widget>[
              Tab(
                child: Text(
                  'Trending',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              Tab(
                child: Text(
                  'Following',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              Tab(
                child: Text(
                  'Explore',
                  style: TextStyle(color: Colors.black),
                ),
              )
            ],
            indicatorColor: Colors.black,
          ),
        ),
        body: articleModel.isLoading
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : SafeArea(
                child: SingleChildScrollView(
                physics: const ScrollPhysics(),
                child: Stack(children: [
                  Positioned(
                      left: 140,
                      top: 18,
                      child: AnimatedOpacity(
                        opacity: articleModel.visible ? 1.0 : 0.0,
                        duration: const Duration(milliseconds: 200),
                        child: Bubble(
                          color: Colors.black,
                          alignment: Alignment.bottomLeft,
                          nipWidth: 30,
                          nipHeight: 10,
                          nip: BubbleNip.leftCenter,
                          child: const Text(
                            'プログラミングなどの\n技術について知見',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      )),
                  Container(
                    margin: const EdgeInsets.all(20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            const Text(
                              'Tech',
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.bold),
                            ),
                            IconButton(
                              icon: const Icon(Icons.help),
                              iconSize: 20,
                              color: Colors.grey,
                              onPressed: () async {
                                await articleModel.bubbleCheck();
                              },
                            ),
                          ],
                        ),
                        LiveList.options(
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            options: options,
                            itemCount: articles.length,
                            itemBuilder: (
                              BuildContext context,
                              int index,
                              Animation<double> animation,
                            ) {
                              return FadeTransition(
                                  opacity: Tween<double>(
                                    begin: 0,
                                    end: 1,
                                  ).animate(animation),
                                  child: SlideTransition(
                                      position: Tween<Offset>(
                                        begin: const Offset(0, 0.2),
                                        end: Offset.zero,
                                      ).animate(animation),
                                      // Paste you Widget
                                      child: Padding(
                                        padding: const EdgeInsets.only(top: 20),
                                        child: ArticlesTile(
                                          articles: articles,
                                          index: index,
                                        ),
                                      )));
                            }),
                      ],
                    ),
                  ),
                ]),
              )),
      ),
    );
  }
}

const options = LiveOptions(
  showItemInterval: Duration(milliseconds: 150),
  showItemDuration: Duration(seconds: 1),
  visibleFraction: 0.01,
  reAnimateOnVisibility: false,
);
