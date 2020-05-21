import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Expanded(
            child: TextField(
              onSubmitted: (s) {},
            ),
          ),
        ),
        body: SafeArea(
          child: ListView.builder(
            itemCount: 20,
            physics: BouncingScrollPhysics(),
            // ignore: missing_return
            itemBuilder: (context, index) {
              return ListTile(
                title: Text('recruiters'),
                subtitle: Text('Description'),
              );
            },
          ),
        ));
  }
}
