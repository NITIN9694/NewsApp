import 'package:flutter/material.dart';
import 'package:newsapp/Provider/NewsArticelviewModel.dart';
import 'package:newsapp/Widget/NewsGrid.dart';
import 'package:provider/provider.dart';

class news_screen extends StatefulWidget {
  const news_screen({Key? key}) : super(key: key);

  @override
  State<news_screen> createState() => _news_screenState();
}

class _news_screenState extends State<news_screen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Provider.of<NewsArticelViewModelprovider>(context, listen: false)
        .topHeadLines();
  }

  @override
  Widget build(BuildContext context) {
    var listviewModel = Provider.of<NewsArticelViewModelprovider>(context);
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          actions: <Widget>[
            Icon(
              Icons.more_vert,
              color: Colors.black,
            ),
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 30),
              child: Text(
                "News",
                style: TextStyle(fontSize: 50, fontWeight: FontWeight.w300),
              ),
            ),
            Divider(
              height: 40,
              thickness: 8,
              endIndent: 20,
              indent: 20,
              color: Color.fromARGB(230, 255, 136, 0),
            ),
            Padding(
              padding: EdgeInsets.only(left: 30),
              child: Text(
                "HeadLine",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
              ),
            ),
            Expanded(child: NewsGrid(articles: listviewModel.articels)),
          ],
        ));
  }
}
