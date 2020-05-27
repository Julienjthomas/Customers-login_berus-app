import 'package:farmcart/components/bottom_bar.dart';
import 'package:flutter/material.dart';

class VegetableDetails extends StatelessWidget {
  final assetPath, vegPrice, vegName;

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
              height: 50.0,
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
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.green,
        child: Icon(Icons.fastfood),
//       backgroundColor: Color(0x),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomBar(),
    );
  }
}
