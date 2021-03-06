
//Sign Up  page

import 'package:farmcart/sign_upaddress.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);
    final emailField = TextField(
      obscureText: true,
      style: style,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        hintText: "Email",
        enabledBorder: OutlineInputBorder(gapPadding: 2.0,
            borderRadius: BorderRadius.circular(32.0),
            borderSide: BorderSide(color: Colors.green)),),
    );

    final passwordField = TextField(
      obscureText: true,
      style: style,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        hintText: "Password",
        enabledBorder: OutlineInputBorder(gapPadding: 2.0,
            borderRadius: BorderRadius.circular(32.0),
            borderSide: BorderSide(color: Colors.green)),),
    );
    final phoneNumber = TextField(
      obscureText: true,
      style: style,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        hintText: "Phone Number",
        enabledBorder: OutlineInputBorder(gapPadding: 2.0,
            borderRadius: BorderRadius.circular(32.0),
            borderSide: BorderSide(color: Colors.green)),),
    );
    final name = TextField(
      obscureText: true,
      style: style,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        hintText: "Name",
        enabledBorder: OutlineInputBorder(gapPadding: 2.0,
            borderRadius: BorderRadius.circular(32.0),
            borderSide: BorderSide(color: Colors.green)),),
    );

    final continueButton = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Colors.green[500],
      child: MaterialButton(
        minWidth: MediaQuery
            .of(context)
            .size
            .width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {
          Navigator.push(context,MaterialPageRoute(builder: (context) {
            return SignUpAddress();
          },
            ),
          );
        },

        child: Text("SAVE & CONTINUE",
            textAlign: TextAlign.center,
            style: style.copyWith(
                color: Colors.white, fontWeight: FontWeight.bold)),
      ),
    );
    final signUp = Container(
      child: Row(
        children: <Widget>[
          Text('Do have an account?'),
          FlatButton(
            textColor: Colors.green[800],
            child: Text(
              'Login',
              style: TextStyle(fontSize: 20),
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          )
        ],
        mainAxisAlignment: MainAxisAlignment.center,
      ),
    );


    return Scaffold(
      backgroundColor: Colors.grey,
      body: AlertDialog(
        elevation: 5.0,

        shape: ContinuousRectangleBorder(
            borderRadius: BorderRadius.circular(30.0)),
        title: Center(
            child: Text(
              'Beru\'s Sign up',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23.0),
            )),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              AspectRatio(aspectRatio: 10),
              Text(
                '  Personal Details',
                style: TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.w500,fontStyle: FontStyle.italic),
              ),

              AspectRatio(aspectRatio: 10),
              name,
              AspectRatio(aspectRatio: 10),
              emailField,
              AspectRatio(aspectRatio: 10),
              passwordField,
              AspectRatio(aspectRatio: 10),
              phoneNumber,
              AspectRatio(aspectRatio: 10),
              continueButton,
              AspectRatio(aspectRatio: 10,),
              signUp


            ],
          ),
        ),
        actions: <Widget>[
        ],
      ),
    );


  }




}
