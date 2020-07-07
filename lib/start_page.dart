import 'package:farmcart/cart.dart';
import 'package:farmcart/sign_up.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
    final emailField = TextField(
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Email",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );

    final passwordField = TextField(
      obscureText: true,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Password",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );

    final loginButton = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Color(0xff008315),
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
      textColor: Color(0xff008315),
      child: Text('Forgot Password'),
    );
    final signUp = Container(
      child: Row(
        children: <Widget>[
          Text('Does not have account?'),
          FlatButton(
            textColor: Color(0xff008315),
            child: Text(
              'Sign up',
              style: TextStyle(fontSize: 20),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return SignUp();
                }),
              );
              //signup screen
            },
          )
        ],
        mainAxisAlignment: MainAxisAlignment.center,
      ),
    );

    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Center(
            child: Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(36.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Transform.translate(
                      offset: Offset(-80.0, -71.0),
                      child: SvgPicture.string(
                        _shapeSVG_a50c2f5e330841039c704249200df18e,
                        allowDrawingOutsideViewBox: true,
                      ),
                    ),
                    SizedBox(
                      height: 155.0,
                      child: Image.asset(
                        "images/logo.png",
                        fit: BoxFit.contain,
                      ),
                    ),
                    SizedBox(height: 45.0),
                    emailField,
                    SizedBox(height: 25.0),
                    passwordField,
                    SizedBox(
                      height: 35.0,
                    ),
                    loginButton,
                    SizedBox(
                      height: 15.0,
                    ),
                    forgotPassword,
                    Column(
                      children: <Widget>[
                        Text(
                          '- OR -',
                          style: TextStyle(
                            color: Colors.blueGrey,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(height: 20.0),
                        Text(
                          'Sign in with',
                          style: TextStyle(color: Colors.green, fontSize: 20),
                        ),
                      ],
                    ),
                    _buildSocialBtnRow(),
                    signUp,
                  ],
                ),
              ),
            ),
          ),
        ));
  }

  static const _shapeSVG_a50c2f5e330841039c704249200df18e =
      '<svg viewBox="100.0 -20.0 50.0 100" ><defs><linearGradient id="gradient" x1="0.544051" y1="1.19412" x2="0.521159" y2="-0.219403"><stop offset="0.0" stop-color="#ff984c22"  /><stop offset="0.490928" stop-color="#ff356f23"  /><stop offset="1.0" stop-color="#ff43a047"  /></linearGradient></defs><path transform="translate(0.0, 24.0)" d="M -44 96 L -13 96 C -13 96 1.572830200195313 63.95188903808594 73 69 C 169 72 199 120 306 105 C 424 85 478 11 478 11 L 478 -95 L -44 -95 L -44 96 Z" fill="url(#gradient)" stroke="#707070" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';

  Widget _buildSocialBtn(Function onTap, AssetImage logo) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 40.0,
        width: 40.0,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              offset: Offset(0, 2),
              blurRadius: 6.0,
            ),
          ],
          image: DecorationImage(
            image: logo,
          ),
        ),
      ),
    );
  }

  Widget _buildSocialBtnRow() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 30.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          _buildSocialBtn(
            () => print('Login with Facebook'),
            AssetImage(
              'images/facebook.png',
            ),
          ),
          _buildSocialBtn(
            () => print('Login with Google'),
            AssetImage(
              'images/google.png',
            ),
          ),
        ],
      ),
    );
  }

  final kLabelStyle = TextStyle(
    color: Colors.teal,
    fontWeight: FontWeight.bold,
    fontFamily: 'OpenSans',
  );
}
