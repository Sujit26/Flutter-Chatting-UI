
import 'package:flutter/rendering.dart';

import 'chat_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'login.dart';
DateFormat format = DateFormat("yyyy-MM-dd");

final TextEditingController textEditingController = TextEditingController();

//var index = 0;
class Chat extends StatelessWidget {
  var index;

  Chat({Key key, @required this.index,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget createBody(){
      Chat_data.sort((chat a,chat b){
        return (a.LastMessageDate).compareTo(b.LastMessageDate);
      });
      Widget buildInput1() {
        return Container(
          child: Row(
            children: <Widget>[
              Flexible(
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: TextField(
                      style: TextStyle( fontSize: 25.0),
                      controller: textEditingController,
                      decoration: InputDecoration.collapsed(
                        hintText: 'Type your message...',
                        hintStyle: TextStyle(
                            fontSize: 25,
                            color: Colors.grey,
                        ),
                      ),
//                    focusNode: focusNode,
                    ),
                  ),
                ),
              ),

              // Button send message
              Material(
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 8.0),
                  child: IconButton(
                    icon: Icon(
                      Icons.send,
                      color: mainColor,
                      size: 32.5,
                    ),
                    onPressed:  (){
                      var new_msg = new message(
                        sender: "my id",
                        data: textEditingController.text,
                        date: DateTime.now().toString(),
                      );
                      Chat_data[index].MSG.add(new_msg);
                      // generate new msg request to server
                      },
                    color: Colors.grey,
                  ),
                ),
                color: Colors.white,
              ),
            ],
          ),
          width: double.infinity,
          height: 60.0,
          decoration: BoxDecoration(border: Border(top: BorderSide(color: Colors.grey, width: 0.5)), color: Colors.white),
        );
      }
      Widget buildInput2() {
        return Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Flexible(
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 0.0),
                  child: IconButton(
                    icon: Icon(
                      Icons.image,
                      color: mainColor,
                    ),
                    onPressed: (){
                    } ,
                  ),
                ),
//                color: Colors.white,
              ),
              Flexible(
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 0.0),
                  child: Icon(
                      Icons.photo_camera,
                      color: mainColor,
                    ),
                  ),
                ),
//                color: Colors.white,
              Flexible(
                child: Container(
                  child: IconButton(
                    icon: Icon(
                      Icons.gif,
                      size: 50,
                    ),
                    onPressed: (){
                    } ,
                    color: mainColor,
                  ),
                ),
              ),
              Flexible(
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 0.0),
                  child: IconButton(
                    icon: Icon(
                      Icons.insert_emoticon,
                      color: mainColor,
                      size: 30,
                    ),
                    onPressed: (){
                    } ,
//                    getImage,
                    color: Colors.grey,
                  ),
                ),
//                color: Colors.white,
              ),
              Flexible(
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 8.0),
                  child: IconButton(
                    icon: Icon(
                      Icons.grid_on,
                      color: mainColor,
                    ),
                    onPressed:  (){
                      var new_msg = new message(
                        sender: "my id",
                        data: textEditingController.text,
                        date: DateTime.now().toString(),
                      );
                      Chat_data[index].MSG.add(new_msg);
                      // generate new msg request to server
                    },
                    color: Colors.grey,
                  ),
                ),
//                color: Colors.white,
              ),
            ],
          ),
          width: double.infinity,
          height: 60.0,
          decoration: BoxDecoration(
              color: Colors.grey[200]
          ),
        );
      }


      return Column(
        children: <Widget>[
          Flexible(
            child: Container(
                child: ListView.builder(
                  itemCount: Chat_data[index].MSG.length,
                  itemBuilder: (context, i) {
                    var parsedDate = DateTime.parse(Chat_data[index].MSG[i].date);
//                    print("DATE:" + parsedDate.toIso8601String());
//                    print("ZONE: " + parsedDate.millisecond.toString());
                    Chat_data[index].MSG.sort(
                            (message a,message b) =>
                            (a.date).compareTo(b.date)
                    );
                    return Chat_data[index].MSG[i].sender == Chat_data[index].sender?
                          Container(
                            child: Column(
                              children: <Widget>[
                                SizedBox(height: 15,),
                                Padding(
                                  padding: const EdgeInsets.only(left: 50),
                                  child: Align(
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.horizontal(right: Radius.circular(15.0),left: Radius.circular(10.0)),
                                      child: Container(
                                          width: 200.0,
                                          decoration: BoxDecoration(
                                            color: mainColor,
                                            borderRadius: BorderRadius.horizontal(right: Radius.circular(20)),
                                          ),
                                          margin: EdgeInsets.only(bottom:  10.0, right: 10.0),
                                          child: Padding(
                                            padding: const EdgeInsets.only(left: 10,top: 10,bottom: 5),
                                            child: Text(
                                              Chat_data[index].MSG[i].data,
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 20
                                              ),
                                              textAlign: TextAlign.left,
                                              //                            overflow: TextOverflow.ellipsis,

                                            ),
                                          ),
                                      ),
                                    ),
                                    alignment: Alignment.bottomLeft,
                                  ),
                                ),
//                                Chat_data[index].MSG[i].sender != Chat_data[index].MSG[i+1].sender?
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    alignment: Alignment.centerLeft,
                                    child: ClipRRect(
                                        borderRadius: BorderRadius.circular(30),
                                        child: Container(
                                          height: 50,
                                          width: 50,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                          ),
                                          child: Image.asset(
                                            Chat_data[index].imageUrl,
                                            fit: BoxFit.fitHeight,
                                          ),
                                        ),
                                    ),
                                  ),

//                                    CircleAvatar(
//                                      radius: 20,
//                                      child: Image.asset(Chat_data[index].imageUrl),
//                                    ),
//                                    alignment: Alignment.bottomLeft,
////                                    color: Colors.deepOrange,
//                                  ),
                                ),

                              ],
                            ),
//                            color: Colors.black,
                          )
                        :
                          Container(
                            child: Column(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(right: 20),
                                    child: Align(
                                      alignment: Alignment.centerRight,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.only(topRight: Radius.elliptical(15, 35)),
                                        child: Container(
                                            width: 200.0,
                                            decoration: BoxDecoration(
                                              color: Colors.deepOrangeAccent,
                                              borderRadius: BorderRadius.horizontal(
                                                left: Radius.circular(20),
                                              ),
                                            ),
                                            margin: EdgeInsets.only(bottom:  10.0, top: 5,right: 5),
                                            child: Padding(
                                              padding: const EdgeInsets.only(right: 10,top: 10,bottom: 10),
                                              child: Text(
                                                Chat_data[index].MSG[i].data,
                                                textAlign: TextAlign.right,
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 20,
                                                ),
                                                textWidthBasis: TextWidthBasis.parent,
                                              ),
                                            )
                                        ),
                                      ),
                                    ),
                                  ),
                                  (Chat_data[index].MSG.length) != i+1?
                                      Chat_data[index].MSG[i].sender != Chat_data[index].MSG[i+1].sender?
                                      Container(
                                        alignment: Alignment.centerRight,
                                        child:ClipRRect(
                                        borderRadius: BorderRadius.circular(30),
                                          child: Container(
                                          height: 50,
                                            width: 50,
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                            ),
                                            child: Image.asset(
                                              'images/1.jpg',
                                              fit: BoxFit.fitWidth,
                                            ),
                                          ),
                                        ),
                                      )



//                                      Container(
//                                        child: CircleAvatar(
//                                          radius: 20,
//                                          child: Image.asset('images/1.jpg'),
//                                        ),
//                                        alignment: Alignment.centerRight,
//                                      )
                                        :
                                    Container(
                                      height: 0,
//                                      child: Text(
//                                        "hi"
//                                      ),
                                    )
                                  :
                                  Container(
                                    alignment: Alignment.centerRight,
                                    child:ClipRRect(
                                      borderRadius: BorderRadius.circular(30),
                                      child: Container(
                                        height: 50,
                                        width: 50,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                        ),
                                        child: Image.asset(
                                          'images/1.jpg',
                                          fit: BoxFit.fitWidth,
                                        ),
                                      ),
                                    ),
                                  )

                        ],
                      ),
//                              color: Colors.black87,
                          );
                  },
                )
            ),
          ),
          buildInput1(),
          buildInput2(),
        ],
      );
    }
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70.0),
        child: AppBar(
          backgroundColor: Colors.deepOrangeAccent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
          ),

          title: Column(
            children: <Widget>[
              Text(
                Chat_data[index].sender,
                style: TextStyle(
//              color: Colors.amber,
                    fontWeight: FontWeight.bold
                ),
              ),
              Text(
                "online",
//              Chat_data[index].sender,
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 17.5,
                ),
              ),
            ],
          ),
          centerTitle: true,
          actions: <Widget>[
            GestureDetector(
              onTap: (){
                print("setting");
              },
              child: Padding(
                padding: const EdgeInsets.only(right: 15),
                child: Icon(
                  Icons.settings,
                  size: 30,
                ),
              ),
            ),
          ],
        ),
      ),
      body: createBody(),

    );
  }
}

