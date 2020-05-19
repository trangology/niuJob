import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:niu_job/resources/my_widget.dart';
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
                MyWidget.createResumeTitle(Strings.textCreateResumeTitle),
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
                MyWidget.prevNextButton(() {}, () {})
                ],
            ),
          ),
        ),
      ),
    );
  }
}