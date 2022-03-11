import 'package:dio/dio.dart';
import 'package:newsapp/Model/news_article.dart';

class WebService {
  var dio = new Dio();
  Future<List<NewArticles>?> fecthTopNewslisten() async {
    String url =
        "http://newsapi.org/v2/top-headlines?country=in&category=health&apiKey=5bbdcdbc1f614c4e9651df00dd38ee47";
    final response = await dio.get(url);
    if (response.statusCode == 200) {
      final result = response.data;
      Iterable list = result['articles'];
      return list.map((article) => NewArticles.fromjson(article)).toList();
    } else {
      throw Exception("Faled to get to news");
    }
  }
}
