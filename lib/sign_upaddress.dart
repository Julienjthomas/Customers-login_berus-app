import 'package:farmcart/cart.dart';
import 'package:flutter/material.dart';

class SignUpAddress extends StatefulWidget {
  @override
  _SignUpAddressState createState() => _SignUpAddressState();
}

class _SignUpAddressState extends State<SignUpAddress> {
  @override
  Widget build(BuildContext context) {
    TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);
    final streetAddress = TextField(
      obscureText: true,
      style: style,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        hintText: "Street Address",
        enabledBorder: OutlineInputBorder(
            gapPadding: 2.0,
            borderRadius: BorderRadius.circular(32.0),
            borderSide: BorderSide(color: Colors.green)),
      ),
    );

    final locality = TextField(
      obscureText: true,
      style: style,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        hintText: "Locality",
        enabledBorder: OutlineInputBorder(
            gapPadding: 2.0,
            borderRadius: BorderRadius.circular(32.0),
            borderSide: BorderSide(color: Colors.green)),
      ),
    );
    final phoneNumber = TextField(
      obscureText: true,
      style: style,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        hintText: "Pincode",
        enabledBorder: OutlineInputBorder(
            gapPadding: 2.0,
            borderRadius: BorderRadius.circular(32.0),
            borderSide: BorderSide(color: Colors.green)),
      ),
    );
    final houseName = TextField(
      obscureText: true,
      style: style,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        hintText: "House Name / Flat No",
        enabledBorder: OutlineInputBorder(
            gapPadding: 2.0,
            borderRadius: BorderRadius.circular(32.0),
            borderSide: BorderSide(color: Colors.green)),
      ),
    );

    final signUp = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Colors.green[500],
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return CartDisplay();
              },
            ),
          );
        },
        child: Text("SIGN UP",
            textAlign: TextAlign.center,
            style: style.copyWith(
                color: Colors.white, fontWeight: FontWeight.bold)),
      ),
    );
    final login = Container(
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
                '  Address Details',
                style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.w500,
                    fontStyle: FontStyle.italic),
              ),
              AspectRatio(aspectRatio: 10),
              houseName,
              AspectRatio(aspectRatio: 10),
              streetAddress,
              AspectRatio(aspectRatio: 10),
              locality,
              AspectRatio(aspectRatio: 10),
              phoneNumber,
              AspectRatio(aspectRatio: 10),
              signUp,
              AspectRatio(
                aspectRatio: 10,
              ),
              login,
            ],
          ),
        ),
        actions: <Widget>[],
      ),
    );
  }
}
