import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  final String string;

  ChatScreen({this.string});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text("$string"),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.settings),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(child: Container()),
            Row(
              children: <Widget>[
                Icon(Icons.sentiment_very_satisfied),
                TextField(
                  decoration: InputDecoration(
                      hintText: 'Bắt đầu trò chuyện',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8))),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.attach_file),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.send),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
