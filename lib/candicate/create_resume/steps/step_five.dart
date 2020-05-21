import 'package:flutter/material.dart';
import 'package:niu_job/models/resume.dart';
import 'package:niu_job/resources/my_widget.dart';
import 'package:niu_job/resources/strings.dart';

import 'step_six.dart';

class StepFive extends StatelessWidget {
  final Resume resume;

  StepFive({@required this.resume});

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
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: MyWidget.textCategory("${Strings.textLanguage}:"),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return languageRow();
                  },
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 16, left: 16, right: 16),
              child: MyWidget.prevNextButton(() {
                Navigator.of(context).pop();
              }, () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => StepSix(resume: resume,)));
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
              labelText: "Ngôn ngữ",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8)
              ),
              prefixIcon: Icon(Icons.language),
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
                    borderRadius: BorderRadius.circular(8)
                ),
                prefixIcon: Icon(Icons.grade),
              ),
            ),
          ),
      ),
    ],
  ),
);