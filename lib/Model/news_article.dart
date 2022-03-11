// ignore_for_file: unnecessary_new

class NewArticles {
  String? author;
  String? title;
  String? description;
  String? url;
  String? urlToImage;
  String? publishedAt;
  String? content;

  NewArticles(
      {this.author,
      this.title,
      this.description,
      this.url,
      this.urlToImage,
      this.publishedAt,
      this.content});

  factory NewArticles.fromjson(Map<String, dynamic> json) {
    return NewArticles(
        title: json["title"],
        author: json["author"],
        description: json["description"],
        urlToImage: json["urlToImage"],
        url: json["url"],
        publishedAt: json["publishedAt"],
        content: json["content"]);
  }
}
