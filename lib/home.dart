import 'package:chatroom/models/chat_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:chatroom/chat.dart';
import 'package:chatroom/Story/PostStory.dart';

Color hexToColor(String code) {
  return new Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
}

Color mainColor = hexToColor("#708690");
Color buttonColor = hexToColor("#A65A7B");
Color bgColor = hexToColor("#F7FAFB");
Color borderColor = hexToColor("#EBEBEB");
Color fbColor = hexToColor("#4267B2");
Color gColor = hexToColor("#de5246");
String imageurl = "/images/1.jpg";

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(title: " Chatroom"),
    );
  }
}

String title = " Chatroom";

class MyHomePage extends StatefulWidget {
  final String title;
  MyHomePage({Key key, this.title}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

int searchVisible = 0;

class _MyHomePageState extends State<MyHomePage> {
  void initState() {
    super.initState();
    searchVisible = 1;
  }

  Widget createBody() {
    Chat_data.sort((chat a, chat b) {
      return (a.LastMessageDate).compareTo(b.LastMessageDate);
    });
//    Chat_data.sort((chat a,chat b){
////      return (a.read).isequal(b.read);
//    });
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Column(
          children: <Widget>[
            searchVisible == 1
                ? Row(
                    children: <Widget>[
                      Flexible(
                        child: Container(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(30),
                              child: TextField(
                                  cursorWidth: 10,
                                  obscureText: false,
                                  maxLengthEnforced: false,
                                  cursorColor: fbColor,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(100),
                                    ),
                                    hintText: "    Search",
                                    floatingLabelBehavior:
                                        FloatingLabelBehavior.never,
                                  ),
                                  onSubmitted: (data) {
                                    // search page
                                  }),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                : Container(),
            Container(
              height: 120,
              child: ListView.builder(
                  itemCount: stories.length + 1,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext ctxt, int index) {
                    return Container(
                      width: 120,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GestureDetector(
                          onTap: () {
                            print("hello there");
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      PostStory(index: index)),
                            );
                          },
                          child: Column(
                            children: <Widget>[
                              index == 0
                                  ? ClipRRect(
                                      child: Stack(
                                        children: <Widget>[
                                          Container(
//                                      color: Colors.deepOrangeAccent,
                                            color: Colors.black26,
                                            height: 70,
                                            width: 70,
                                          ),
                                          Positioned(
                                            bottom: 0,
                                            left: 0,
                                            right: 0,
                                            top: 0,
                                            child: Icon(
                                              Icons.add,
                                              size: 60,
                                            ),
                                          ),
                                        ],
                                      ),
                                      borderRadius: BorderRadius.circular(70),
                                    )
                                  : ClipRRect(
                                      child: Container(
                                        child: Image.asset(
                                          stories[index - 1].profileUrl,
//                                'images/sujit.jpeg',
                                          fit: BoxFit.fitHeight,
                                        ),
                                        color: Colors.black,
                                        height: 70,
                                        width: 70,
                                      ),
                                      borderRadius: BorderRadius.circular(70),
                                    ),
                              index == 0
                                  ? Align(
                                      alignment: Alignment.center,
                                      child: Padding(
                                        padding: const EdgeInsets.only(top: 10),
                                        child: Text(
                                          "Add Story",
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w500,
                                          ),
                                          overflow: TextOverflow.ellipsis,
//                                overflow: TextOverflow.fade,
                                          maxLines: 2,
                                          softWrap: true,
                                        ),
                                      ),
                                    )
                                  : Align(
                                      alignment: Alignment.center,
                                      child: Padding(
                                        padding: const EdgeInsets.only(top: 10),
                                        child: Text(
                                          stories[index - 1].user,
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w500,
                                          ),
                                          overflow: TextOverflow.ellipsis,
//                                overflow: TextOverflow.fade,
                                          maxLines: 2,
                                          softWrap: true,
                                        ),
                                      ),
                                    ),
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
            ),
            Container(
              decoration: BoxDecoration(color: Colors.white),
              // margin: EdgeInsets.only(top: 10),
              child: ListView.builder(
                  itemCount: Chat_data.length,
                  itemBuilder: (context, index) {
                    return Card(
                      color: Chat_data[index].read == true
                          ? Colors.white
                          : Colors.white30,
                      shadowColor: Colors.white,
                      elevation: 0,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Chat(
                                        index: index,
                                      )));
                        },
                        child: ListTile(
                          leading: ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: Container(
                              height: 70,
//                              width: 70,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                              ),
                              child: Image.asset(
                                Chat_data[index].imageUrl,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          title: Text(
                            (Chat_data[index].sender).toString(),
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontSize: 22.5,
                                color: Colors.black,
                                fontWeight: FontWeight.w600),
                          ),
                          subtitle: Chat_data[index].read == true
                              ? Text(
                                  Chat_data[index].LastMessage,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    color: Colors.black87,
                                    fontSize: 15,
                                  ),
                                )
                              : Text(
                                  Chat_data[index].LastMessage,
                                  overflow: TextOverflow.ellipsis,
//                                overflow: TextOverflow.fade,
                                  maxLines: 1,
                                  softWrap: true,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                      color: Colors.black54),
                                ),
//                        trailing: Icon(Icons.),
                        ),
                      ),
                    );
                  }),
              height: MediaQuery.of(context).size.height,
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80.0),
        child: AppBar(
          backgroundColor: Colors.deepOrangeAccent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(80),
              bottomRight: Radius.circular(10),
            ),
          ),
          elevation: 10,
//          backgroundColor: Colors.deepOrangeAccent,
          leading: Container(),

          title: Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              child: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Text(
                  title,
                  style: TextStyle(fontSize: 40),
                ),
              ),
            ),
          ),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 20, top: 25),
              child: Icon(
                Icons.message,
                size: 35,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
      body: createBody(),
    );
  }
}
