import 'package:newsapp/Model/news_article.dart';

class NewsArticrlViewModel {
  NewArticles _articles;
  NewsArticrlViewModel({required NewArticles articles}) : _articles = articles;

  String? get title {
    return _articles.title;
  }

  String? get description {
    return _articles.description;
  }

  String? get imageurl {
    return _articles.urlToImage;
  }

  String? get url {
    return _articles.url;
  }

  String? get author {
    return _articles.author;
  }
}
