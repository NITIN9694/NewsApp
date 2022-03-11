// ignore_for_file: unnecessary_this, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:newsapp/Model/news_articel_virew_model.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:newsapp/Model/news_article.dart';
import 'package:newsapp/Screens/news_detail.dart';

class NewsGrid extends StatelessWidget {
  late final List<NewsArticrlViewModel> articles;
  NewsGrid({required this.articles});
  void _showNewsArticelDetails(BuildContext context, NewsArticrlViewModel vm) {
    Navigator.push(context, MaterialPageRoute(builder: (_) {
      return NewsDetail(
        article: vm,
      );
    }));
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemCount: this.articles.length,
        itemBuilder: (context, index) {
          var articel = articles[index];
          return InkWell(
            onTap: () {
              _showNewsArticelDetails(context, articel);
            },
            child: GridTile(
              child: Container(
                  child: CachedNetworkImage(
                imageUrl: articel.imageurl == null
                    ? "https://cpng.pikpng.com/pngl/s/106-1069399_iam-add-group1-sorry-no-image-available-clipart.png"
                    : articel.imageurl!,
                imageBuilder: (context, imageProvider) {
                  return Container(
                    margin: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            image: imageProvider, fit: BoxFit.cover)),
                  );
                },
              )),
              footer: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    articel.title!,
                    maxLines: 1,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  )),
            ),
          );
        });
  }
}
