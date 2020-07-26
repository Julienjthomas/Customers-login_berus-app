//Generally if we click on a product from start product listing page ,Normally it goes to this page

import 'package:farmcart/components/bottom_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class VegetableDetails extends StatelessWidget {
  final assetPath, vegPrice, vegName;

  final ScrollController _scrollController=ScrollController();

  VegetableDetails({this.assetPath, this.vegName, this.vegPrice});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: Icon(
              Icons.notifications,
              color: Color(0xff545d68),
            ),
          ),
        ],
        title: Text(
          'Beru vegetables',
          style: TextStyle(
            fontSize: 30.0,
            color: Color(0xff545d68),
            fontFamily: 'SourceSansPro',
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Color(0xff545d68),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: ListView(
        controller: _scrollController,
        children: <Widget>[
          SizedBox(
            height: 15.0,
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Text(
              'Fruits',
              style: TextStyle(
                fontFamily: 'Varela',
                fontSize: 42.0,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
          ),
          SizedBox(
            height: 15.0,
          ),
          Hero(
            tag: assetPath,
            child: Image.asset(
              (assetPath),
              height: 150.0,
              width: 100.0,
              fit: BoxFit.contain,
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Center(
            child: Text(
              vegPrice,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Varela',
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
                color: Color(0xfff17532),
              ),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Center(
            child: Text(
              vegName,
              style: TextStyle(
                  fontFamily: 'Varela',
                  fontSize: 24.0,
                  color: Color(0xff575e67)),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width - 50.0,
              height: 50.0,
              child: Text(
                'Very good fruits produced from organic farming.It is directly collected and distributed by Beru',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: 'Varela',
                    fontSize: 16.0,
                    color: Color(0xFFB4B8B9)),
              ),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: EdgeInsets.only(left: 5.0, right: 5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Icon(Icons.remove_circle_outline,
                    color: Colors.green, size: 20.0),
                Text('3',
                    style: TextStyle(
                        fontFamily: 'Varela',
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                        fontSize: 20.0)),
                Icon(Icons.add_circle_outline, color: Colors.green, size: 20.0),
              ],
            ),
          ),
          SizedBox(
            height: 30.0,
          ),
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width - 50.0,
              height: 40.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25.0),
                color: Colors.green,
              ),
              child: Center(
                child: Text(
                  'Add to Cart',
                  style: TextStyle(
                      fontFamily: 'Varela',
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
          ),
          AspectRatio(
            aspectRatio: 20.0,
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              BeruFeatures(
                path: 'images/contactless.jpg',
              ),
              BeruFeatures(
                path: 'images/customer.jpg',
              ),
              BeruFeatures(
                path: 'images/homedelivery.jpg',
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 20.0),
            child: Container(
              height: 1.0,
              width: double.infinity,
              color: Colors.grey,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Have a question?',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.left,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: Text(
                    'Find answers in product info, Q&As, reviews',
                    textAlign: TextAlign.left,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Type your question or keyword',
                      prefixIcon: Icon(Icons.search),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
            child: Container(
              height: 3.0,
              width: double.infinity,
              color: Colors.grey,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left:20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('From the Farmer',style: TextStyle(fontSize: 19.0,fontWeight: FontWeight.bold),),
                Padding(
                  padding: const EdgeInsets.all(40.0),
                  child: Center(child: Image(image: AssetImage(assetPath),)),
                ),
                Text(
                  'Very good fruits produced from organic farming.It is directly collected and distributed by Beru.Vegetables are good sources of minerals, especially calcium and iron, and vitamins, principally A and C. Nearly all vegetables are rich in dietary fibre and antioxidants. Vegetables are usually classified on the basis of the part of the plant that is used for food.',
                  style: TextStyle(
                      fontFamily: 'Varela',
                      fontSize: 16.0,
                      color: Colors.black),),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 20.0),
            child: Container(
              height: 1.0,
              width: double.infinity,
              color: Colors.grey,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left:20.0,right: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Customer Questions',
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.left,
                ),
                AspectRatio(aspectRatio: 30.0),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Have a question? Search for answers',
                    prefixIcon: Icon(Icons.search),
                  ),
                ),
                AspectRatio(aspectRatio: 30.0),
                Container(
                  height: 200,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ],
            ),
          ),
          
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.green,
        child: Icon(Icons.fastfood),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomBar(),
    );
  }
}

class BeruFeatures extends StatelessWidget {
  BeruFeatures({@required this.path});
  final String path;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      width: 60.0,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(path), fit: BoxFit.contain),
      ),
    );
  }
}
