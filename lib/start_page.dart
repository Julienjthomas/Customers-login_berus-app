//opening Sign in page

import 'package:farmcart/cart.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);

  @override
  Widget build(BuildContext context) {


    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Center(
            child: Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(36.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    AspectRatio(aspectRatio: 3),
                  Text('Welcome to Beru\'s app',style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0,
                    fontStyle: FontStyle.italic
                  ), ),
                    AspectRatio(aspectRatio: 7),
                    AspectRatio(
                      aspectRatio: 2,
                      child: Image.asset(
                        "images/logo.png",
                        fit: BoxFit.contain,
                      ),
                    ),
                    AspectRatio(aspectRatio: 8),
                    GoogleFbButton(text: 'Sign in with Google',img:'google.png',),
                    AspectRatio(aspectRatio: 8),
                    GoogleFbButton(text: 'Sign in with Facebook',img:'facebook.png',),
                    AspectRatio(aspectRatio: 8),

                    Column(
                      children: <Widget>[
                        Text(
                          '- OR -',
                          style: TextStyle(
                            color: Colors.blueGrey,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(height: 30.0),
                        Material(
                          elevation: 5.0,
                          borderRadius: BorderRadius.circular(30.0),
                          color: Colors.white,
                          child: MaterialButton(
                            minWidth: MediaQuery.of(context).size.width,
                            padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) {
                                  return CartDisplay();
                                }),
                              );
                            },
                            child: Row(
                              children: <Widget>[
                                Expanded(child: Image(image: AssetImage('images/logo.png'),height: 35.0,),),
                                Padding(
                                  padding: const EdgeInsets.only(right: 75.0,),
                                  child: Text('Sign in With Beru',
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                          color: Colors.black, fontWeight: FontWeight.bold,fontSize: 16)),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }


  final kLabelStyle = TextStyle(
    color: Colors.teal,
    fontWeight: FontWeight.bold,
    fontFamily: 'OpenSans',
  );
}

class GoogleFbButton extends StatelessWidget {
  GoogleFbButton({this.text,this.img});
  final String text;
  final String img;
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Colors.white,
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) {
              return CartDisplay();
            }),
          );
        },
        child: Row(
          children: <Widget>[
            Expanded(child: Image(image: AssetImage('images/'+img),height: 30.0,)),
            Padding(
              padding: const EdgeInsets.only(right: 50.0),
              child: Text(text,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold,fontSize: 16)),
            ),
          ],
        ),
      ),
    );
  }
}
