import 'package:flutter/material.dart';

const String _name = "Anonymous";

class ChatMessage extends StatelessWidget {
  final String text;

// constructor to get text from textfield
  ChatMessage({this.text});

  @override
  Widget build(BuildContext context) {
    return new Container(
        margin: EdgeInsets.only(right: 50.0),
        child: new Column(
          children: <Widget>[
            new Row(
              children: <Widget>[
                new Container(
                  margin: EdgeInsets.only(right: 5.0),
                  child: new CircleAvatar(
                    child: new Image.network(
                        "http://res.cloudinary.com/kennyy/image/upload/v1531317427/avatar_z1rc6f.png"),
                  ),
                ),
                new Expanded(
                    child: Container(
                  padding: EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    color: const Color(0xFFFFFFFF),
                    image: DecorationImage(
                      image: ExactAssetImage('images/flowers.jpeg'),
                      fit: BoxFit.cover,
                    ),
                    border: Border.all(
                      color: Colors.black,
                      width: 1.0,
                    ),
                    borderRadius:
                        new BorderRadius.all(new Radius.circular(20.0)),
                  ),
                  child: Text(text),
                )),
              ],
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Text(
                  "10:30 pm",
                  textAlign: TextAlign.right,
                  style: TextStyle(),
                ),
              ],
            )
          ],
        ));
  }
}
