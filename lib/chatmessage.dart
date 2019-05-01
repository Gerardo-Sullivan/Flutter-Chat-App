import 'package:flutter/material.dart';

const String _name = "Anonymous";

class ChatMessage extends StatelessWidget {
  final String text;

// constructor to get text from textfield
  ChatMessage({this.text});

  @override
  Widget build(BuildContext context) {
    return new Container(
        child: new Row(
      children: <Widget>[
        new Container(
          margin: EdgeInsets.only(right: 5.0),
          child: new CircleAvatar(
            child: new Image.network(
                "http://res.cloudinary.com/kennyy/image/upload/v1531317427/avatar_z1rc6f.png"),
          ),
        ),
        new Expanded(child: Text(text)),
      ],
    ));
  }
}
