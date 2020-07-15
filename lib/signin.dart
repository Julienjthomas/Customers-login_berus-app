import 'package:farmcart/cart.dart';
import 'package:farmcart/sign_up.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);

  @override
  Widget build(BuildContext context) {
    final emailField = TextField(
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Email",
          enabledBorder: OutlineInputBorder(gapPadding: 2.0,
              borderRadius: BorderRadius.circular(32.0),
              borderSide: BorderSide(color: Colors.green)),
      ),
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

    final loginButton = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Colors.green,
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
        child: Text("Sign in",
            textAlign: TextAlign.center,
            style: style.copyWith(
                color: Colors.white, fontWeight: FontWeight.bold)),
      ),
    );
    final forgotPassword = FlatButton(
      onPressed: () {
        //forgot password screen
      },
      textColor: Colors.grey,
      child: Text('Forgot Password'),
    );

    return Scaffold(
      backgroundColor: Colors.grey,
      body: AlertDialog(
        elevation: 24.0,
        shape: ContinuousRectangleBorder(
            borderRadius: BorderRadius.circular(30.0)),
        title: Center(
            child: Text(
          'Beru\'s Sign in Page',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23.0),
        )),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              emailField,
              AspectRatio(
                aspectRatio: 20,
              ),
              passwordField,
              AspectRatio(
                aspectRatio: 25,
              ),
            ],
          ),
        ),
        actions: <Widget>[
          loginButton,
          forgotPassword,
        ],
      ),
    );

  }
}
