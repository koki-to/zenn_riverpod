import 'package:flutter/material.dart';
import 'package:zenn_riverpod/domain/entity/article.dart';

class ArticlesTile extends StatelessWidget {
  const ArticlesTile({Key? key, required this.articles, required this.index})
      : super(key: key);
  final List<Article> articles;
  final int index;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      child: Row(
        children: <Widget>[
          Expanded(
              flex: 1,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    articles[index].emoji,
                    style: const TextStyle(fontSize: 40),
                  ),
                ),
              )),
          const SizedBox(width: 10),
          Expanded(
            flex: 3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  child: Container(
                    color: Colors.blue[50],
                    child: Text(
                      articles[index].title,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.blue[50],
                    child: Row(
                      children: <Widget>[
                        CircleAvatar(
                          backgroundImage: NetworkImage(articles[index]
                              .user['avatarSmallUrl']
                              .toString()),
                        )
                        // Expanded(flex: 4, child: Container())
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
    ;
  }
}
