import 'package:flutter/cupertino.dart';
import 'package:newsapp/Model/news_articel_virew_model.dart';
import 'package:newsapp/Model/news_article.dart';
import 'package:newsapp/Service/Apiservice.dart';
import 'package:flutter/material.dart';

enum LoadingStatus { completed, searching, empty }

class NewsArticelViewModelprovider with ChangeNotifier {
  LoadingStatus loadingStatus = LoadingStatus.empty;
  List<NewsArticrlViewModel> articels = <NewsArticrlViewModel>[];

  void topHeadLines() async {
    List<NewArticles>? newaticles = await WebService().fecthTopNewslisten();
    loadingStatus = LoadingStatus.searching;
    notifyListeners();

    this.articels = newaticles!
        .map((articel) => NewsArticrlViewModel(articles: articel))
        .toList();

    if (this.articels.isEmpty) {
      this.loadingStatus = LoadingStatus.empty;
    } else {
      this.loadingStatus = LoadingStatus.completed;
    }
    notifyListeners();
  }
}
