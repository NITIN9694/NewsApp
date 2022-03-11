import 'package:flutter/material.dart';
import 'package:newsapp/Model/news_articel_virew_model.dart';
import 'package:newsapp/Widget/Circel.dart';

class NewsDetail extends StatefulWidget {
  final NewsArticrlViewModel article;

  NewsDetail({required this.article});
  @override
  State<NewsDetail> createState() => _NewsDetailState();
}

class _NewsDetailState extends State<NewsDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
          title: Row(children: [
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
              ),
            ),
            SizedBox(
              width: 80,
            ),
            CircleAvatar(
              backgroundColor: Colors.grey,
              child: Icon(
                Icons.person,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              constraints: BoxConstraints(
                maxWidth: 150,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Author',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                    ),
                  ),
                  Text(
                    widget.article.author ?? "Undefined",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                    ),
                  )
                ],
              ),
            ),
          ])),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 30, right: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Stack(
                  alignment: Alignment.centerLeft,
                  children: <Widget>[
                    Divider(
                      height: 80,
                      color: Color(0xffFF8A30),
                      thickness: 20,
                    ),
                    Text(
                      ' Headline',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                Text(
                  widget.article.title!,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                    wordSpacing: 3,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  height: 200,
                  child: CircleImage(
                    imageUrl: widget.article.imageurl!,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  widget.article.description ?? "No Contents",
                  style: TextStyle(
                    fontSize: 16,
                    wordSpacing: 3,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
