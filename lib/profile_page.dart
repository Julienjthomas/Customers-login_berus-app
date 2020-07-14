//This is the profile page

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class ProfilePage extends StatefulWidget {
  @override
  MapScreenState createState() => MapScreenState();
}

class MapScreenState extends State<ProfilePage>
    with SingleTickerProviderStateMixin {
  bool _status = true;
  final FocusNode myFocusNode = FocusNode();

  String selectedGender;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Colors.white,
      child: ListView(
        children: <Widget>[
          Flex(
            mainAxisSize: MainAxisSize.min,
            direction: Axis.vertical,
            children: <Widget>[
              Flexible(
                fit: FlexFit.loose,
                child: Column(
                  children: <Widget>[
                    Padding(
                        padding: EdgeInsets.only(left: 20.0, top: 20.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Icon(
                              Icons.arrow_back_ios,
                              color: Colors.black,
                              size: 22.0,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 25.0),
                              child: Text('PROFILE',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20.0,
                                      fontFamily: 'sans-serif-light',
                                      color: Colors.black)),
                            )
                          ],
                        )),
                    Padding(
                      padding: EdgeInsets.only(top: 20.0),
                      child: Stack(fit: StackFit.loose, children: <Widget>[
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                                width: 140.0,
                                height: 140.0,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    image: ExactAssetImage('images/jjt.png'),
                                    fit: BoxFit.cover,
                                  ),
                                )),
                          ],
                        ),
                        Padding(
                            padding: EdgeInsets.only(top: 90.0, right: 100.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                CircleAvatar(
                                  backgroundColor: Colors.red,
                                  radius: 25.0,
                                  child: Icon(
                                    Icons.camera_alt,
                                    color: Colors.white,
                                  ),
                                )
                              ],
                            )),
                      ]),
                    )
                  ],
                ),
              ),
              Container(
                color: Color(0xffFFFFFF),
                child: Padding(
                  padding: EdgeInsets.only(bottom: 25.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                          padding: EdgeInsets.only(
                              left: 25.0, right: 25.0, top: 25.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Text(
                                    'Personal Information',
                                    style: TextStyle(
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  _status ? _getEditIcon() : Container(),
                                ],
                              )
                            ],
                          )),
                      AddField(fieldName: 'First Name',),
                      AddTextField(status: _status,hintText: 'Enter Your First Name',),
                      AddField(fieldName: 'Last Name',),
                      AddTextField(status: _status,hintText: 'Enter Your Last Name',),
                      AddField(fieldName: 'Email ID'),
                      AddTextField(status: _status,hintText: 'Enter Email ID',),
                     AddField(fieldName: 'Mobile',),
                      AddTextField(status: _status,hintText: 'Enter your Mobile Number',),
                      AddField(fieldName: 'Address',),
                      AddTextField(status: _status,hintText: 'Enter Your Address',),
                      Padding(
                          padding: EdgeInsets.only(
                              left: 25.0, right: 25.0, top: 25.0,bottom: 25.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Text(
                                    'Additional  Information',
                                    style: TextStyle(
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ],
                          )),
                      AddField(fieldName: 'House Name'),
                      AddTextField(hintText: 'Enter house name', status: _status),
                      AddField(fieldName: 'Locality'),
                      AddTextField(hintText: 'Enter Locality Name', status: _status),
                      AddField(fieldName: 'City'),
                      AddTextField(hintText: 'Enter your city', status: _status),
                      AddField(fieldName: 'District'),
                      AddTextField(hintText: 'Enter district name', status: _status),
                      AddField(fieldName: 'State'),
                      AddTextField(hintText: 'Enter State name', status: _status),
                      AddField(fieldName: 'Pincode'),
                      AddTextField(hintText: 'Enter your pincode', status: _status),
                      AddField(fieldName: 'Alternate Number'),
                      AddTextField(hintText: 'Enter Alternate Number', status: _status),
                      !_status ? _getActionButtons() : Container(),
                    ],
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    ));
  }


  Widget _getActionButtons() {
    return Padding(
      padding: EdgeInsets.only(left: 25.0, right: 25.0, top: 45.0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(right: 10.0),
              child: Container(
                  child: RaisedButton(
                child: Text("Save"),
                textColor: Colors.white,
                color: Colors.green,
                onPressed: () {
                  setState(() {
                    _status = true;
                    FocusScope.of(context).requestFocus(FocusNode());
                  });
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)),
              )),
            ),
            flex: 2,
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 10.0),
              child: Container(
                  child: RaisedButton(
                child: Text("Cancel"),
                textColor: Colors.white,
                color: Colors.red,
                onPressed: () {
                  setState(() {
                    _status = true;
                    FocusScope.of(context).requestFocus(FocusNode());
                  });
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)),
              )),
            ),
            flex: 2,
          ),
        ],
      ),
    );
  }

  Widget _getEditIcon() {
    return GestureDetector(
      child: CircleAvatar(
        backgroundColor: Colors.red,
        radius: 14.0,
        child: Icon(
          Icons.edit,
          color: Colors.white,
          size: 16.0,
        ),
      ),
      onTap: () {
        setState(() {
          _status = false;
        });
      },
    );
  }
}

class AddTextField extends StatelessWidget {
  const AddTextField({
    @required this.hintText,
    @required this.status,
  });
  final bool status;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 25.0, right: 25.0, top: 2.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Flexible(
              child: TextField(
                decoration: InputDecoration(
                  hintText: hintText,
                ),
                enabled: !status,
                autofocus: !status,
              ),
            ),
          ],
        ));
  }
}

class AddField extends StatelessWidget {
   AddField({@required this.fieldName});
  final String fieldName;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 25.0, right: 25.0, top: 25.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(
                  fieldName,
                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ],
        ));
  }
}
