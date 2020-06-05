import 'package:flutter/material.dart';
import 'login.dart';

// TODO: open ios/Runner.xcworkspace to open xcode

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}
