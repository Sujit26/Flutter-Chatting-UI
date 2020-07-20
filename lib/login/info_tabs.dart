// Copyright 2017 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:chatroom/login/loginPage.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AppBarBottomSample extends StatefulWidget {
  @override
  _AppBarBottomSampleState createState() => _AppBarBottomSampleState();
}

class _AppBarBottomSampleState extends State<AppBarBottomSample>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: choices.length);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  void _nextPage(int delta) {
    final int newIndex = _tabController.index + delta;
    if (newIndex < 0 || newIndex >= _tabController.length) return;
    _tabController.animateTo(newIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      color: Colors.deepOrangeAccent,
      home: Scaffold(
        body: TabBarView(
          controller: _tabController,
          children: choices.map((Choice choice) {
            return ChoiceCard(choice: choice);
          }).toList(),
        ),
      ),
    );
  }
}

class Choice {
  const Choice({
    this.title,
    this.icon,
    this.text,
  });

  final String title;
  final String text;
  final IconData icon;
}

const List<Choice> choices = const <Choice>[
  const Choice(
    title: 'PRIVATE MESSAGES',
    icon: Icons.people,
    text: "Commuinacation with your friends via private messages.",
  ),
  const Choice(
    title: 'GROUP CHATS',
    icon: Icons.group_add,
    text: "Create Group to stay in touch with your gang.",
  ),
  const Choice(
    title: 'SEND PHOTOS',
    icon: FontAwesomeIcons.instagram,
    text:
        "Have fun with your friends by sendinf photos and videos to each other.",
  ),
  const Choice(
    title: 'POST STORY',
    icon: FontAwesomeIcons.pooStorm,
    text: "Have better social life by posting your current story.",
  ),
  const Choice(
    title: 'GET NOTIFIED',
    icon: FontAwesomeIcons.bell,
    text: "Recive notifications when freiends are looking for you.",
  ),
];

class ChoiceCard extends StatelessWidget {
  const ChoiceCard({Key key, this.choice}) : super(key: key);
  final Choice choice;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.deepOrangeAccent,
      child: Center(
        child: Column(
//          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: FaIcon(
                choice.icon,
                size: 120.0,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              choice.title,
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 20,
            ),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.only(left: 5, right: 5),
                child: Text(
                  choice.text,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ),
            ),
            Spacer(),
            Spacer(),
            choice.title == "GET NOTIFIED"
                ? Center(
                    child: Container(
                        height: 70,
                        alignment: Alignment.bottomRight,
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 5, right: 20),
                          child: GestureDetector(
                            onTap: () {
                              return Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => loginPage()),
                              );
                            },
                            child: Center(
                              child: Container(
//                    color: Colors.black,
                                height: 60,
                                width: 200,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(90)),
                                child: Center(
                                  child: Text(
                                    "Continue",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                ),
                                alignment: Alignment.bottomRight,
                              ),
                            ),
                          ),
                        )),
                  )
                : Container(),
          ],
        ),
      ),
    );
  }
}
