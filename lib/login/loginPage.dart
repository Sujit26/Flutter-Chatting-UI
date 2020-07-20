import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../home.dart';
import '../home.dart';

Color hexToColor(String code) {
  return new Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
}

Color mainColor = hexToColor("#708690");
Color buttonColor = hexToColor("#A65A7B");
Color bgColor = hexToColor("#F7FAFB");
Color borderColor = hexToColor("#EBEBEB");
Color fbColor = hexToColor("#4267B2");
Color gColor = hexToColor("#de5246");

String AppName = " Chatting";
String logo = "images/logo1.png";

class loginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<loginPage> {
  @override
  @override
  Widget build(BuildContext context) {
    Widget createBody() {
      return Material(
//        color: Colors.black,
        child: Column(
          children: <Widget>[
            Container(
              height: 100,
//              color: Colors.red,
              child: Row(
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context, false);
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20, top: 50),
                      child: Icon(
                        Icons.arrow_back_ios,
                        size: 35,
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 20),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Sign In",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Colors.black),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 100,
              child: GestureDetector(
                onTap: () {
//                    return _NavigateToLogin(context);
                },
                child: Center(
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 20, right: 20, bottom: 5),
                    child: TextField(
                      cursorWidth: 10,
                      obscureText: false,
                      maxLengthEnforced: false,
                      cursorColor: fbColor,
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        focusColor: Colors.white,
                        hoverColor: Colors.white,

                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100),
                          borderSide: BorderSide(
                            style: BorderStyle.solid,
                          ),
                        ),
                        hintText: "Enter Your Email adress",
//                          labelText: 'Email',
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              child: GestureDetector(
                onTap: () {
//                    return _NavigateToLogin(context);
                },
                child: Center(
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 20, right: 20, bottom: 5),
                    child: TextField(
                      cursorWidth: 10,
                      obscureText: false,
                      maxLengthEnforced: false,
                      cursorColor: fbColor,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100),
                        ),
                        hintText: "Password",
//                          labelText: 'Email',
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50, right: 50, top: 10),
              child: GestureDetector(
                onTap: () {
                  return Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                },
                child: Container(
                  alignment: Alignment.bottomLeft,
                  decoration: BoxDecoration(
                    color: fbColor,
                    borderRadius: BorderRadius.circular(400),
//                      border: BoxBorder.
                  ),
                  child: Center(
                    child: Text(
                      "Login",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  height: 60,
                ),
              ),
            ),
            SizedBox(
              height: 60,
            ),
            Text(
              "Or",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 25,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.only(left: 40, right: 40, top: 10),
                child: GestureDetector(
                  onTap: () {
                    return Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()),
                    );
                  },
                  child: Container(
                    alignment: Alignment.bottomLeft,
                    decoration: BoxDecoration(
                      color: gColor,
                      borderRadius: BorderRadius.circular(400),
                    ),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Container(
                              child: FaIcon(
                                FontAwesomeIcons.google,
                                size: 30,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Container(
                              child: Text(
                                "Login with Gmail",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    height: 60,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.only(left: 40, right: 40, top: 10),
                child: GestureDetector(
                  onTap: () {
                    return Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()),
                    );
                  },
                  child: Container(
                    alignment: Alignment.bottomLeft,
                    decoration: BoxDecoration(
                      color: fbColor,
                      borderRadius: BorderRadius.circular(400),
                    ),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: FaIcon(
                              FontAwesomeIcons.facebookF,
                              size: 30,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            "Login with Facebook",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    height: 60,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
//      appBar: AppBar(
//        backgroundColor: Colors.white,
//      ),
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: createBody(),
      ),
    );
  }
}
