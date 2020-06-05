import 'package:chatroom/login/signupPage.dart';
import 'package:flutter/material.dart';
import 'package:chatroom/login/loginPage.dart';

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
String logo= "images/logo1.png";

class LoginPage extends StatefulWidget {

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  @override

  @override
  Widget build(BuildContext context) {
    void _NavigateToSignUp(BuildContext context){
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => signupPage()),
      );

    };
    void _NavigateToLogin(BuildContext context){
      Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => loginPage()),
      );
    };
    Widget createBody() {
      return Container(
        color: Colors.deepOrangeAccent,
//        color: Colors.amber,
        child: Column(
          children: <Widget> [
            SizedBox(
              height: 160,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 150),
              child: Container(
                child:  Image.asset(logo),
                width: 200,
                height: 200,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              child: Text(
                "Welcome To" + AppName,
                style: TextStyle(
                  fontSize: 25,
                  color: bgColor,
                  fontWeight: FontWeight.bold

                ),
              ),

            ),

            SizedBox(
              height: 200,
            ),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.only(left: 40,right: 40,top: 10),
                child: GestureDetector(
                  onTap: (){
                    return _NavigateToLogin(context);
                  },
                  child: Container(
                    alignment: Alignment.bottomLeft,
                    decoration: BoxDecoration(
                      color: bgColor,
                      borderRadius: BorderRadius.circular(400),
                    ),
                    child: Center(
                      child: Text(
                        "Login",
                        style: TextStyle(
                          fontSize: 20,
                          color: fbColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    height: 60,
                  ),
                ),
              ),
            ),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.only(left: 40,right: 40,top: 10),
                child: GestureDetector(
                  onTap: (){
                    return _NavigateToSignUp(context);
                  },
                  child: Container(
                    alignment: Alignment.bottomLeft,
                    decoration: BoxDecoration(
                      color: fbColor,
                      borderRadius: BorderRadius.circular(400),
                    ),
                    child: Center(
                      child: Text(
                        "Sign-Up",
                        style: TextStyle(
                          fontSize: 20,
                          color: bgColor,
                          fontWeight: FontWeight.bold,
                        ),
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
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: createBody(),
      ),
    );
  }

}