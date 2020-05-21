import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:niu_job/models/resume.dart';
import 'package:niu_job/resources/my_widget.dart';
import 'package:niu_job/resources/strings.dart';

import 'step_three.dart';

class StepTwo extends StatelessWidget {
  final Resume resume;

  StepTwo({@required this.resume});

  var _descriptionController = TextEditingController();
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
                MyWidget.createResumeTitle(Strings.textCreateResumeTitle),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 32),
                  child: TextField(
                    controller: _descriptionController,
                    maxLines: 10,
                    textInputAction: TextInputAction.done,
                    decoration: InputDecoration(
                        labelText: Strings.textGoalLabel,
                        hintText: Strings.textGoalHint,
                        border: OutlineInputBorder()),
                  ),
                ),
                MyWidget.prevNextButton(() {
                  Navigator.of(context).pop();
                }, () {
                  resume.description = _descriptionController.text;
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => StepThree(resume: resume)));
                })
                ],
            ),
          ),
        ),
      ),
    );
  }
}