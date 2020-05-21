import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notifications'),
      ),
      body: SafeArea(
        child: ListView.builder(
          itemCount: 20,
          physics: BouncingScrollPhysics(),
          itemBuilder: (context, index) => ListTile(
            title: Text('Notification $index'),
            subtitle: Text("Bla bla bla bla..."),
          ),
        ),
      )
    );
  }
}