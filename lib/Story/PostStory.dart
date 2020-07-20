import 'package:chatroom/models/chat_data.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PostStory extends StatefulWidget {
  final int index;
  PostStory({Key key, this.index}) : super(key: key);

  @override
  _PostStoryState createState() => _PostStoryState();
}

class _PostStoryState extends State<PostStory> {
  @override
  Widget build(BuildContext context) {
    Widget createBody() {
      return GestureDetector(
        onTap: () {
//          Navigator.pop(context,false);
        },
        onTapUp: (tapUpDetails) {
          if (tapUpDetails.localPosition.dx < 100.0) {
            Navigator.pop(context, false);
          } else if (widget.index == stories.length - 1) {
          } else if (tapUpDetails.localPosition.dx > 300.0) {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => PostStory(index: widget.index + 1)),
            );
          }
        },
        child: Material(
          child: Container(
            height: 1000,
            color: Colors.black,
            child: Tab(
              child: ListView.builder(
                  itemCount: stories[widget.index].user_stories.length,
                  itemBuilder: (context, i) {
                    return Column(
                      children: <Widget>[
                        Container(
                          color: Colors.black,
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.horizontal(
                                    right: Radius.circular(40),
                                    left: Radius.circular(20)),
                              ),
                              child: Column(
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      Flexible(
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              left: 20, top: 10),
                                          child: Container(
                                            child: Text(
                                              stories[widget.index].user,
                                              style: TextStyle(
                                                fontSize: 25,
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            alignment: Alignment.bottomLeft,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            right: 5, top: 10),
                                        child: Container(
                                          child: Icon(
                                            Icons.location_on,
                                            size: 20,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          right: 20,
                                          top: 10,
                                        ),
                                        child: Container(
                                          child: Text(
                                            stories[widget.index]
                                                .user_stories[i]
                                                .location,
                                            style: TextStyle(
                                              fontSize: 18,
                                              color: Colors.black,
                                            ),
                                          ),
                                          alignment: Alignment.bottomRight,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 15,
                                        bottom: 0,
                                        top: 10,
                                        right: 15),
                                    child: Stack(
                                      children: <Widget>[
                                        GestureDetector(
                                          onDoubleTap: () {
                                            return Visibility(
                                              child: FaIcon(
                                                FontAwesomeIcons
                                                    .solidKissWinkHeart,
                                                size: 50,
                                              ),
                                            );
                                          },
                                          child: Container(
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.horizontal(
                                                      right:
                                                          Radius.circular(40),
                                                      left:
                                                          Radius.circular(20)),
                                            ),
                                            child: Image.asset(
                                              stories[widget.index]
                                                  .user_stories[i]
                                                  .imageurl,
                                              fit: BoxFit.fitHeight,
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          bottom: 10,
                                          right: 10,
                                          child: Column(
                                            children: <Widget>[
                                              SizedBox(
                                                height: 20,
                                              ),
                                              FaIcon(
                                                FontAwesomeIcons.solidHeart,
                                                color: Colors.red,
                                              ),
                                              SizedBox(
                                                height: 20,
                                              ),
                                              FaIcon(
                                                FontAwesomeIcons.comment,
                                                color: Colors.white,
                                              ),
                                              SizedBox(
                                                height: 20,
                                              ),
                                              FaIcon(
                                                FontAwesomeIcons.share,
                                                color: Colors.white,
                                              ),
                                              SizedBox(
                                                height: 20,
                                              ),
                                              FaIcon(
                                                FontAwesomeIcons.locationArrow,
                                                color: Colors.white,
                                              ),
                                              SizedBox(
                                                height: 20,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 30, bottom: 10, top: 10),
                                    child: Column(
                                      children: <Widget>[
                                        Container(
                                          child: Text(
                                            stories[widget.index]
                                                .user_stories[i]
                                                .caption,
                                            style: TextStyle(
                                              fontSize: 18,
                                              color: Colors.black,
                                            ),
                                          ),
                                          alignment: Alignment.bottomLeft,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              margin: EdgeInsets.only(
                                  bottom: 10.0, left: 40.0, right: 10),
                            ),
                          ),
                        ),
                      ],
                    );
                  }),
            ),
          ),
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
