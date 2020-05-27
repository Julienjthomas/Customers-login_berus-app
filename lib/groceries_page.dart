import 'package:farmcart/vegetables_details.dart';
import 'package:flutter/material.dart';

class GroceriesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffcfaf8),
      body: ListView(
        children: <Widget>[
          SizedBox(
            height: 15.0,
          ),
          Container(
            padding: EdgeInsets.only(right: 15.0),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height - 50.0,
            child: GridView.count(
              crossAxisCount: 2,
              primary: false,
              crossAxisSpacing: 10.0,
              mainAxisSpacing: 15.0,
              childAspectRatio: 0.8,
              children: <Widget>[
                buildCard('Mask', ' \₹50.0', 'images/mask.jpg', false, false,
                    context),
                buildCard(
                    'Vim', '\₹50.0', 'images/vim.jpg', true, false, context),
                buildCard('Chilli Powder', '\₹50.0', 'images/chillipowder.jpg',
                    false, true, context),
                buildCard('Bleaching Powder', '\₹50.0',
                    'images/bleachingpowder.jpg', false, true, context),
                buildCard('Turmeric', '\₹50.0', 'images/turmeric.jpg', false,
                    true, context),
//                buildCard('Pineapple', '\₹50.0', 'images/pineapple.jpg', false,
//                    true, context),
//                buildCard('Pineapple', '\₹50.0', 'images/pineapple.jpg', false,
//                    true, context),
              ],
            ),
          ),
          SizedBox(
            height: 100.0,
          ),
        ],
      ),
    );
  }

  Widget buildCard(String name, String price, String imgPath, bool addded,
      bool isFavourite, context) {
    return Padding(
      padding: EdgeInsets.only(top: 15.0, bottom: 5.0, left: 5.0, right: 5.0),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => VegetableDetails(
                assetPath: imgPath,
                vegName: name,
                vegPrice: price,
              ),
            ),
          );
        },
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 3.0,
                  blurRadius: 5.0,
                ),
              ],
              color: Colors.white),
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    isFavourite
                        ? Icon(
                            Icons.favorite,
                            color: Colors.green,
                          )
                        : Icon(
                            Icons.favorite_border,
                            color: Colors.green,
                          )
                  ],
                ),
              ),
              Hero(
                  tag: imgPath,
                  child: Container(
                    height: 75.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            imgPath,
                          ),
                          fit: BoxFit.contain),
                    ),
                  )),
              SizedBox(
                height: 7.0,
              ),
              Text(
                price,
                style: TextStyle(
                  color: Color(0xffcc8053),
                  fontFamily: 'SourceSansPro',
                  fontSize: 14.0,
                ),
              ),
              Text(
                name,
                style: TextStyle(
                  color: Color(0xff575e67),
                  fontFamily: 'SourceSansPro',
                  fontSize: 18.0,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Container(
                  color: Color(0xffebebeb),
                  height: 1.0,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 5.0, right: 5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    !addded
                        ? Icon(Icons.shopping_basket,
                            color: Color(0xFFD17E50), size: 12.0)
                        : Icon(Icons.remove_circle_outline,
                            color: Color(0xFFD17E50), size: 12.0),
                    !addded
                        ? Text('Add to cart',
                            style: TextStyle(
                                fontFamily: 'Varela',
                                color: Color(0xFFD17E50),
                                fontSize: 12.0))
                        : Text('3',
                            style: TextStyle(
                                fontFamily: 'Varela',
                                fontWeight: FontWeight.bold,
                                color: Color(0xFFD17E50),
                                fontSize: 12.0)),
                    addded
                        ? Icon(Icons.add_circle_outline,
                            color: Color(0xffd17e50), size: 12.0)
                        : SizedBox(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
