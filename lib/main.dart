import 'package:chatroom/screens/home_screen.dart';
import 'package:chatroom/screens/login_screen.dart';
import 'package:chatroom/services/firebase_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

// TODO: open ios/Runner.xcworkspace to open xcode

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  FirebaseRepository _repository = FirebaseRepository();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FutureBuilder(
        future: _repository.getCurrentUser(),
        builder: (context, AsyncSnapshot<FirebaseUser> snapshot) {
          if (snapshot.hasData) {
            return HomeScreen();
          } else {
            return LoginScreen();
          }
        },
      ),
    );
  }
}
