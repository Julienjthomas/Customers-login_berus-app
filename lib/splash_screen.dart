//splash screen not coonected

import 'package:flutter/material.dart';

class AndroidMobile1 extends StatelessWidget {
  AndroidMobile1({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          // Adobe XD layer: '111' (shape)
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: const AssetImage('images/bg.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(118.0, 161.0),
            child: Container(
              width: 127.0,
              height: 134.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.elliptical(63.5, 67.0)),
                color: const Color(0xf7ffffff),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(94.0, 143.0),
            child:
                // Adobe XD layer: 'English logo' (shape)
                Container(
              width: 172.0,
              height: 170.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('images/logo.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
