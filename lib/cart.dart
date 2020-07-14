
//This is the starting display page where  the products are shown


import 'package:farmcart/components/bottom_bar.dart';
import 'package:farmcart/fruits_page.dart';
import 'package:farmcart/groceries_page.dart';
import 'package:farmcart/vegetables_details.dart';
import 'vegetables_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartDisplay extends StatefulWidget {
  @override
  _CartDisplayState createState() => _CartDisplayState();
}

class _CartDisplayState extends State<CartDisplay>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
        leading: Icon(
          Icons.menu,
          color: Color(0xff545d68),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: ListView(
        padding: EdgeInsets.only(left: 10.0),
        children: <Widget>[
          SizedBox(
            height: 15.0,
          ),
          Text(
            'Quick Buy',
            style: TextStyle(
              fontFamily: 'SourceSansPro',
              fontSize: 40.0,
              fontWeight: FontWeight.bold,
            ),
          ),

          SizedBox(
            height: 15.0,
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 20.0,),
            height: 165.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                buildCard('Mask', ' \₹50.0', 'images/mask.jpg',
                    context),
                SizedBox(width: 10.0,),
                buildCard(
                    'Vim', '\₹50.0', 'images/vim.jpg', context),
                SizedBox(width: 10.0,),
                buildCard('Chilli Powder', '\₹50.0', 'images/chillipowder.jpg',
                    context),
                SizedBox(width: 10.0,),
                buildCard('Turmeric', '\₹50.0', 'images/turmeric.jpg',  context),
                SizedBox(width: 20.0,),
              ],
            ),
          ),
          Text(
            'Categories',
            style: TextStyle(
              fontFamily: 'SourceSansPro',
              fontSize: 42.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 15.0,
          ),
          TabBar(
            controller: _tabController,
            indicatorColor: Colors.transparent,
            labelColor: Colors.green,
            isScrollable: true,
            labelPadding: EdgeInsets.only(right: 45.0),
            unselectedLabelColor: Color(0xffcdcdcd),
            tabs: [
              Tab(
                child: Text(
                  'Vegatables',
                  style: TextStyle(fontFamily: 'SourceSansPro', fontSize: 21.0),
                ),
              ),
              Tab(
                child: Text(
                  'Fruits',
                  style: TextStyle(fontFamily: 'SourceSansPro', fontSize: 21.0),
                ),
              ),
              Tab(
                child: Text(
                  'Groceries',
                  style: TextStyle(fontFamily: 'SourceSansPro', fontSize: 21.0),
                ),
              ),
            ],
          ),
          Container(
            height: MediaQuery.of(context).size.height - 50,
            width: double.infinity,
            child: TabBarView(controller: _tabController, children: [
              VegetablesPage(),
              FruitsPage(),
              GroceriesPage(),
            ]),
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


Widget buildCard(String name, String price, String imgPath, context) {
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
        width: 125,
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
                ],
              ),
            ),
        ),
      );
}
