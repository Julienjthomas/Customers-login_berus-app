import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Offline extends StatelessWidget {
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
        leading: Icon(
          Icons.menu,
          color: Color(0xff545d68),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: Flex(
        direction: Axis.vertical,
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'images/dog.png',
                  ),
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.0,),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'OOPS!',
                    style: TextStyle(
                      fontSize: 25.0,fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text('NO INTERNET',style: TextStyle(
                    fontSize: 25.0,fontWeight: FontWeight.w400,
                  ),),
                  Text('Please check your network connection',
                  style: TextStyle(fontWeight: FontWeight.w300),),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Container(
                      height: 50.0,
                      width: 1000.0,
                      child: FlatButton(
                        color: Colors.grey[350],
                        onPressed: (){
                        },
                        child: Text('TRY AGAIN',style:
                        TextStyle(fontWeight: FontWeight.w500,fontSize: 15),),
                      ),
                    ),
                  ),

                ],
              ),
          ),
        ],
      ),
    );
  }
}
