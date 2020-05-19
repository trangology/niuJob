import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:niu_job/resources/strings.dart';

class StepTwo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: Text(Strings.textCreateResumeTitle,
                      style: TextStyle(color: Colors.black, fontSize: 28, fontWeight: FontWeight.bold)),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 32),
                  child: TextField(
                    maxLines: 10,
                    textInputAction: TextInputAction.done,
                    decoration: InputDecoration(
                        labelText: Strings.textGoalLabel,
                        hintText: Strings.textGoalHint,
                        border: OutlineInputBorder()),
                  ),
                ),
                Center(
                  child: OutlineButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.keyboard_arrow_right),
                      label: Text("NEXT")),
                )
                ],
            ),
          ),
        ),
      ),
    );
  }
}