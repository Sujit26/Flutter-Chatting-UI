import 'package:chatroom/login/loginPage.dart';
import 'package:flutter/material.dart';
import 'info_tabs.dart';
class signupPage extends StatefulWidget {

  @override
  _SignUpPageState createState() => _SignUpPageState();
}


class _SignUpPageState extends State<signupPage> {

  @override

  @override
  Widget build(BuildContext context) {
    var spacing = 10.0;
    Widget createBody() {
      return Material(
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
                      padding: const EdgeInsets.only(left: 20,top: 50),
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
              padding: const EdgeInsets.only(top: 20,left: 20),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Create a new account",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
//            Stack(
//              children: <Widget>[
//                Container(
//                  width: 110,
//                  height: 110,
//                ),
//
//                ClipRRect(
//                  borderRadius: BorderRadius.circular(60),
//                  child: Container(
//                    height: 100,
//                    width: 100,
//                    child: Image.asset(
//                      'images/sidhant.jpeg',
//                      fit: BoxFit.fitHeight,
//                    ),
//
//                  ),
//                ),
//                Positioned(
//                  right: 0,
//                  bottom: 0,
//                  child: ClipRRect(
//                    borderRadius: BorderRadius.circular(30),
//                    child: Container(
//                      height: 45,
//                      width: 45,
//                      color: Colors.lightBlue[700],
//                      child: Icon(
//                        Icons.photo_camera,
//                        color: Colors.white,
//                        size: 30,
//                      ),
//                    ),
//                  ),
//                )
//              ],
//            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: <Widget>[
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Container(
                      child: Stack(
                        children: <Widget>[
                          Container(
                            width: 110,
                            height: 110,
                          ),

                          ClipRRect(
                            borderRadius: BorderRadius.circular(60),
                            child: Container(
                              height: 100,
                              width: 100,
                              child: Image.asset(
                                'images/sidhant.jpeg',
                                fit: BoxFit.fitHeight,
                              ),

                            ),
                          ),
                          Positioned(
                            right: 0,
                            bottom: 0,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(30),
                              child: Container(
                                height: 45,
                                width: 45,
                                color: Colors.lightBlue[700],
                                child: Icon(
                                  Icons.photo_camera,
                                  color: Colors.white,
                                  size: 30,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
//                    color: Colors.deepOrangeAccent,
                    ),
                  ),
                ),
                Container(
                  child: Column(
                    children: <Widget>[
                      Container(
                        height: 50,
//                        color: Colors.black,
                        width: 300,
                        child: GestureDetector(
                          onTap: (){
//                    return _NavigateToLogin(context);
                          },
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 5),
                              child: TextField(
                                cursorWidth: 10,
                                obscureText: false,
                                maxLengthEnforced: false,
                                cursorColor: fbColor,
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(100),
                                    ),
                                    hintText: "First Name",
                                    hintStyle: TextStyle(
//                          background: Colors.amber
                                    )
                                ),

                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: spacing,
                      ),
                      Container(
                        height: 50,
                        width: 300,
                        child: GestureDetector(
                          onTap: (){
////                    return _NavigateToLogin(context);
                          },
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.only(left:20, right: 20, bottom: 5),
                              child: TextField(
                                cursorWidth: 10,
                                obscureText: false,
                                maxLengthEnforced: false,
                                cursorColor: fbColor,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(100),
                                  ),
                                  hintText: "Last Name",
//                          labelText: 'Email',
                                ),

                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: spacing,
            ),
            Flexible(
              child: Container(
                height: 50,
                child: GestureDetector(
                  onTap: (){
//                    return _NavigateToLogin(context);
                  },
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20, bottom: 5),
                      child: TextField(
                        cursorWidth: 10,
                        obscureText: false,
                        maxLengthEnforced: false,
                        cursorColor: fbColor,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(100),
                          ),
                          hintText: "Mobile Nubmer",
//                          labelText: 'Email',
                        ),

                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: spacing,
            ),
            Flexible(
              child: Container(
                height: 50,
                child: GestureDetector(
                  onTap: (){
//                    return _NavigateToLogin(context);
                  },
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20, bottom: 5),
                      child: TextField(
                        cursorWidth: 10,
                        obscureText: false,
                        maxLengthEnforced: false,
                        cursorColor: fbColor,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(100),
                          ),
                          hintText: "Email adress",
//                          labelText: 'Email',
                        ),

                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: spacing,
            ),
            Flexible(
              child: Container(
                height: 50,
                child: GestureDetector(
                  onTap: (){
//                    return _NavigateToLogin(context);
                  },
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20, bottom: 5),
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
            ),
            SizedBox(
              height: spacing,
            ),
            Flexible(
              child: Container(
                height: 50,
                child: GestureDetector(
                  onTap: (){
//                    return _NavigateToLogin(context);
                  },
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20, bottom: 5),
                      child: TextField(
                        cursorWidth: 10,
                        obscureText: false,
                        maxLengthEnforced: false,
                        cursorColor: fbColor,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(100),
                          ),
                          hintText: "Confirm Password",
//                          labelText: 'Email',
                        ),

                      ),
                    ),
                  ),
                ),
              ),
            ),
            Flexible(

              child: SizedBox(
                height: spacing*20,
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 50,right: 50,top: 10),
              child: GestureDetector(
                onTap: (){
                  return Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AppBarBottomSample()),
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
                          fontWeight: FontWeight.bold

                      ),
                    ),
                  ),
                  height: 60,
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