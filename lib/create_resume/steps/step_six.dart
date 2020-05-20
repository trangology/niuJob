import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:niu_job/models/resume.dart';
import 'package:niu_job/resources/my_widget.dart';
import 'package:niu_job/resources/strings.dart';

import 'step_seven.dart';

class StepSix extends StatelessWidget {
  final Resume resume;

  StepSix({@required this.resume});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: MyWidget.createResumeTitle(Strings.textCreateResumeTitle),
            ),
            Padding(
              padding: EdgeInsets.only(left: 16, right: 16, bottom: 16),
              child: MyWidget.textCategory("Ngôn ngữ lập trình"),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return languageRow();
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 16, left: 16, right: 16),
              child: MyWidget.prevNextButton(() {
                Navigator.of(context).pop();
              }, () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => StepSeven(resume: resume)));
              }),
            )
          ],
        ),
      ),
    );
  }
}

Widget languageRow() => Padding(
      padding: EdgeInsets.only(top: 8, left: 16, right: 16, bottom: 8),
      child: Row(
        children: <Widget>[
          Flexible(
            flex: 5,
            child: Padding(
              padding: const EdgeInsets.only(right: 4.0),
              child: TextField(
                decoration: InputDecoration(
                  labelText: "Ngôn ngữ lập trình",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8)),
                ),
              ),
            ),
          ),
          Flexible(
            flex: 5,
            child: Padding(
              padding: const EdgeInsets.only(left: 4.0),
              child: TextField(
                decoration: InputDecoration(
                  labelText: "Trình độ",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8)),
                ),
              ),
            ),
          ),
        ],
      ),
    );
