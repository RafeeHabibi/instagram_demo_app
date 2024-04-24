import 'package:flutter/material.dart';
import 'my_home_page.dart';

void main() => runApp(MyApp(),);

class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
        title: 'انستاگرام',
        home: Directionality(textDirection: TextDirection.rtl,child: MyHomePage()),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}

