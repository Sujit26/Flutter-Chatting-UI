
class chat {
 String sender;
 String LastMessage;
 bool read;
 String imageUrl;
 String LastMessageDate;
 List<message> MSG ;

 chat({
   this.sender,
   this.LastMessage,
   this.read,
   this.imageUrl,
   this.LastMessageDate,
   this.MSG,
 });
}


class story {
  String user;
  bool seenall;
  String profileUrl;
  List< story_card > user_stories;

  story({
    this.user,
    this.seenall,
    this.profileUrl,
    this.user_stories,

  });
}

class story_card{
  String date;
  String imageurl;
  String caption;
  String location;

  story_card({
    this.date,
    this.imageurl,
    this.caption,
    this.location,
  });
}



List< story > stories = [
  story(
    user: "Sujit",
    seenall: false,
    profileUrl: "images/sujit.jpeg",
    user_stories: [
      story_card(
        date: "2019-11-25 00:00:00.000",
        imageurl: "images/sujit.jpeg",
        caption: "Himachal trip",
        location: "Himachal Pradesh",
      ),
      story_card(
        date: "2019-11-25 00:00:00.000",
        imageurl: "images/1.jpg",
        caption: "Diwali at Home",
        location: "Saharanpur",
      ),
    ],
  ),
  story(
    user: "Sujit",
    seenall: false,
    profileUrl: "images/vaibhav.jpeg",
    user_stories: [
      story_card(
        date: "2019-11-29 00:00:00.000",
        imageurl: "images/vaibhav.jpeg",
        caption: "Kite Flying",
        location: "Ropar",
      ),
      story_card(
        date: "2019-11-29 00:00:00.000",
        imageurl: "images/4.JPG",
        caption: "Ropar trip",
        location: "Roopnagar",
      ),
      story_card(
        date: "2019-11-29 00:00:00.000",
        imageurl: "images/3.jpg",
        caption: "Selfie with Sister",
        location: "Saharanpur",
      ),
    ],
  ),

  story(
    user: "Shivam",
    seenall: false,
    profileUrl: "images/9.jpg",
    user_stories: [
      story_card(
        date: "2019-11-31 00:00:00.000",
        imageurl: "images/6.jpg",
        caption: "Wedding Look",
        location: "Saharanpur",
      ),
      story_card(
        date: "2019-11-31 00:00:00.000",
        imageurl: "images/5.JPG",
        caption: "Weeding Photo",
        location: "Himachal Pradesh",
      ),
      story_card(
        date: "2019-11-31 00:00:00.000",
        imageurl: "images/9.jpg",
        caption: "Wedding Look",
        location: "Himachal Pradesh",
      ),
    ],
  ),
  story(
    user: "Rajat",
    seenall: false,
    profileUrl: "images/7.jpg",
    user_stories: [
      story_card(
        date: "2019-11-31 00:00:00.000",
        imageurl: "images/7.jpg",
        caption: "ISMP Dairies",
        location: "IIT Ropar",
      ),
      story_card(
        date: "2019-11-31 00:00:00.000",
        imageurl: "images/8.jpg",
        caption: " Food Party",
        location: "Ropar Market",
      ),
    ],
  ),
];

// 😁😅😆😁😍😘😌😉🙂😇🥳🥳🤩😎🧐🤪😜😜😴😴😴
class message {
  String data;
  var date;
  String sender;

  message({
    this.data,
    this.date,
    this.sender,
  });
}

List<chat> Chat_data = [
  chat(
    sender: "Sujit Jaiwaliya",
    LastMessage: "Hello sir 🤪",
    LastMessageDate: "2019-11-25 00:00:00.000",
    read: true,
    imageUrl: "images/sujit.jpeg",
    MSG: [

      message(
        data: "HELLo Freind!! How are Your?",
        date:  "2019-11-25 00:00:00.000",
        sender: "Sujit Jaiwaliya",
      ),
      message(
        data: "Hi, i'm good you tell have to seen sujit's new chatting app",
        date:  "2019-11-25 00:00:01.000",
        sender: "2017csb1115@iitrpr.ac.in",
      ),

      message(
        data: "Have you use lightroom. That is really cool app, you should try that. basically is Photo-editing application which makes your photos powerfull and attraactive 🌚",
        date:  "2019-11-25 00:00:06.000",
        sender: "Sujit Jaiwaliya",
      ),

      message(
        data: "Yeah, Cool That's amazing brother",
        date:  "2019-11-25 00:00:05.000",
        sender: "2017csb1115@iitrpr.ac.in",
      ),


      message(
        data: "Yeah that's really good brox🤪",
        date:  "2019-11-25 00:00:03.000",
        sender: "2017csb1115@iitrpr.ac.in",
      ),

      message(
        data: "I will rate it five out of five 😉🙂😇🥳",
        date:  "2019-11-25 00:00:04.000",
        sender: "Sujit Jaiwaliya",
      ),
    ]


  ),

  chat(
    sender: "Sidhant Jain",
    LastMessage: "Whenever you have time, call me 😇",
    read: false,
    LastMessageDate: "2019-11-25 00:01:00.000",
      imageUrl: "images/sidhant.jpeg",
      MSG: [

        message(
          data: "HELLo",
          date:  "2019-11-25 00:00:00.000",
          sender: "Sender1",
        ),
        message(
          data: "HELOO DRIVER1",
          date:  "2019-11-25 00:00:01.000",
          sender: "2017csb1115@iitrpr.ac.in",
        ),

        message(
          data: "aur ni to kya ",
          date:  "2019-11-25 00:00:06.000",
          sender: "Sender1",
        ),

        message(
          data: "Kuch bhi mat bol bhai",
          date:  "2019-11-25 00:00:05.000",
          sender: "2017csb1115@iitrpr.ac.in",
        ),


        message(
          data: "bolo bhi ab",
          date:  "2019-11-25 00:00:03.000",
          sender: "2017csb1115@iitrpr.ac.in",
        ),

        message(
          data: "kya hai",
          date:  "2019-11-25 00:00:04.000",
          sender: "Sender1",
        ),
      ]
  ),
  chat(
    sender: "Shivam Jaiwaliya",
    LastMessage: "Bye 😴",
    read: true,
      LastMessageDate: "2019-11-25 00:01:00.000",
      imageUrl: "images/shivam.jpeg",
      MSG: [

        message(
          data: "HELLo",
          date:  "2019-11-25 00:00:00.000",
          sender: "Sender1",
        ),
        message(
          data: "HELOO DRIVER1",
          date:  "2019-11-25 00:00:01.000",
          sender: "2017csb1115@iitrpr.ac.in",
        ),

        message(
          data: "aur ni to kya ",
          date:  "2019-11-25 00:00:06.000",
          sender: "Sender1",
        ),

        message(
          data: "Kuch bhi mat bol bhai",
          date:  "2019-11-25 00:00:05.000",
          sender: "2017csb1115@iitrpr.ac.in",
        ),


        message(
          data: "bolo bhi ab",
          date:  "2019-11-25 00:00:03.000",
          sender: "2017csb1115@iitrpr.ac.in",
        ),

        message(
          data: "kya hai",
          date:  "2019-11-25 00:00:04.000",
          sender: "Sender1",
        ),
      ]
  ),
  chat(
    sender: "Pankaj Kumar",
    LastMessage: "Have you use Lightroom 🤩😎",
    read: false,
      LastMessageDate: "2019-11-25 00:01:00.000",
      imageUrl: "images/pankaj.jpeg",
      MSG: [

        message(
          data: "HELLo",
          date:  "2019-11-25 00:00:00.000",
          sender: "Sender1",
        ),
        message(
          data: "HELOO DRIVER1",
          date:  "2019-11-25 00:00:01.000",
          sender: "2017csb1115@iitrpr.ac.in",
        ),

        message(
          data: "aur ni to kya ",
          date:  "2019-11-25 00:00:06.000",
          sender: "Sender1",
        ),

        message(
          data: "Kuch bhi mat bol bhai",
          date:  "2019-11-25 00:00:05.000",
          sender: "2017csb1115@iitrpr.ac.in",
        ),


        message(
          data: "bolo bhi ab",
          date:  "2019-11-25 00:00:03.000",
          sender: "2017csb1115@iitrpr.ac.in",
        ),

        message(
          data: "kya hai",
          date:  "2019-11-25 00:00:04.000",
          sender: "Sender1",
        ),
      ]
  ),
  chat(
    sender: "Vaibhav Singh",
    LastMessage: "Give my money back 😌",
    read: true,
      LastMessageDate: "2019-11-25 00:01:00.000",
      imageUrl: "images/vaibhav.jpeg",
      MSG: [

        message(
          data: "HELLo",
          date:  "2019-11-25 00:00:00.000",
          sender: "Sender1",
        ),
        message(
          data: "HELOO DRIVER1",
          date:  "2019-11-25 00:00:01.000",
          sender: "2017csb1115@iitrpr.ac.in",
        ),

        message(
          data: "aur ni to kya  dashjasbhsaashh  h id hd  ahdsudas     assad ",
          date:  "2019-11-25 00:00:06.000",
          sender: "Sender1",
        ),

        message(
          data: "Kuch bhi mat bol bhai",
          date:  "2019-11-25 00:00:05.000",
          sender: "2017csb1115@iitrpr.ac.in",
        ),


        message(
          data: "bolo bhi ab",
          date:  "2019-11-25 00:00:03.000",
          sender: "2017csb1115@iitrpr.ac.in",
        ),

        message(
          data: "kya hai",
          date:  "2019-11-25 00:00:04.000",
          sender: "Sender1",
        ),
      ]
  ),

];