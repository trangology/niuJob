import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:niu_job/models/resume.dart';
import 'package:niu_job/resources/my_widget.dart';
import 'package:niu_job/resources/strings.dart';

import 'preview_resume.dart';

class StepSeven extends StatefulWidget {
  final Resume resume;

  StepSeven({@required this.resume});

  @override
  _StepSevenState createState() => _StepSevenState();
}

class _StepSevenState extends State<StepSeven> {
  List<String> _listSkills = [];
  var _controller = TextEditingController();

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
                  padding: EdgeInsets.only(bottom: 16),
                  child: MyWidget.textCategory("Kĩ năng khác:"),
                ),
                TextField(
                  textCapitalization: TextCapitalization.words,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8)),
                      hintText: "Kĩ năng khác",
                      labelText: "Kĩ năng khác"),
                  controller: _controller,
                  onSubmitted: (value) {
                    setState(() {
                      _listSkills.add(value);
                      _controller.clear();
                    });
                  },
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Wrap(
                    children: _listSkills
                        .map((string) => Chip(
                              label: Text(string),
                              onDeleted: () {
                                setState(() {
                                  _listSkills.removeWhere(
                                      (element) => element == string);
                                });
                              },
                            ))
                        .toList(),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 16),
                  child: MyWidget.prevNextButton(() {
                    Navigator.of(context).pop();
                  }, () {
                    widget.resume.otherSkills = _listSkills;
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => PreviewResume(resume: widget.resume)));
                  }),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
