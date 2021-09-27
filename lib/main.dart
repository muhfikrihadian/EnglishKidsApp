import 'package:english_kids_app/features/video_screen.dart';
import 'package:flutter/material.dart';

import 'features/category_screen.dart';
import 'features/detail_screen.dart';
import 'features/type_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "English For Kids",
      theme: ThemeData(
          primaryColor: Colors.blue,
          accentColor: Colors.pink,
          canvasColor: Color(0xffF2F2F2),

          textTheme: ThemeData.light().textTheme.copyWith(
            title: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20
            ),
            subhead: TextStyle(fontWeight: FontWeight.bold),
          ),
      ),
      routes: {
        "/" : (ctx) => CategoryScreen(),
        '/type' : (ctx) => TypeScreen(),
        '/detail' : (ctx) => DetailScreen(),
        '/play' : (ctx) => VideoScreen(),
      },
    );
  }
}

