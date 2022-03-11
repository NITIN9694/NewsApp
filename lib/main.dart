import 'package:flutter/material.dart';
import 'package:newsapp/Provider/NewsArticelviewModel.dart';
import 'package:newsapp/Screens/news_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'News',
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          appBarTheme: AppBarTheme(
              elevation: 0,
              textTheme:
                  TextTheme(titleMedium: TextStyle(color: Colors.black)))),
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (_) => NewsArticelViewModelprovider(),
          )
        ],
        child: news_screen(),
      ),
    );
  }
}
