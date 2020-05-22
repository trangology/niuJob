import 'package:flutter/material.dart';
import 'package:niu_job/home/page/chat_screen.dart';

class ListChat extends StatefulWidget {
  @override
  _ListChatState createState() => _ListChatState();
}

class _ListChatState extends State<ListChat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context, index) => Card(
          child: ListTile(
            title: Text('Công ty cổ phần NoName'),
            subtitle: Text("Hôm nay"),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        ChatScreen(string: 'Công ty cổ phần NoName'),
                  ));
            },
          ),
        ),
        itemCount: 3,
      ),
    );
  }
}
