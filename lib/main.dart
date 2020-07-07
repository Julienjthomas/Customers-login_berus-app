import 'package:farmcart/AndroidMobile1.dart';
import 'package:farmcart/start_page.dart';
import 'package:flutter/material.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.white,
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
      ),
      //home: AndroidMobile1(),
      home: MyHomePage(title: 'Flutter Login'),

    );
  }
}

