//From here all the kali begins

import 'package:farmcart/error_page.dart';
import 'package:farmcart/start_page.dart';
import 'package:flutter/material.dart';
import 'splash_screen.dart';
import 'offline page.dart';


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
      //home: Offline(),
      //home: ErrorPage(),

    );
  }
}

