import 'package:flutter/material.dart';
import 'package:niu_job/models/companies.dart';
import 'package:niu_job/recruiter/last_recruiter_step.dart';
import 'package:niu_job/resources/my_widget.dart';

class RecruiterStepOne extends StatefulWidget {
  final Company company;

  RecruiterStepOne({@required this.company});

  @override
  _RecruiterStepOneState createState() => _RecruiterStepOneState();
}

class _RecruiterStepOneState extends State<RecruiterStepOne> {
  var _controller = TextEditingController();
  List<String> _list = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            children: <Widget>[
              MyWidget.createResumeTitle("Bạn đang tìm kiếm ai"),
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: TextField(
                  controller: _controller,
                  decoration: InputDecoration(
                      hintText: "Software Developer, DevOps...",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      )),
                ),
              ),
              MyWidget.prevNextButton(() {
                Navigator.pop(context);
              }, () {
                widget.company.findWho = _controller.text;
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            RecruiterStepTwo(company: widget.company)));
              })
            ],
          ),
        ),
      ),
    );
  }
}

class RecruiterStepTwo extends StatefulWidget {
  final Company company;

  RecruiterStepTwo({@required this.company});

  @override
  _RecruiterStepTwoState createState() => _RecruiterStepTwoState();
}

class _RecruiterStepTwoState extends State<RecruiterStepTwo> {
  List<String> _chips = [];
  var _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            children: <Widget>[
              MyWidget.createResumeTitle("Kiểu và vị trí công việc"),
              Padding(
                padding: EdgeInsets.only(top: 8),
                child: TextField(
                  controller: _controller,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  textInputAction: TextInputAction.done,
                  onSubmitted: (value) => setState(() => _chips.add(value)),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(16),
                child: Wrap(
                  children: _chips
                      .map((e) => Chip(
                            label: Text(e),
                            onDeleted: () {
                              setState(() {
                                _chips.removeWhere((element) => element == e);
                              });
                            },
                          ))
                      .toList(),
                ),
              ),
              MyWidget.prevNextButton(() {
                Navigator.pop(context);
              }, () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => RecruiterStepThree(
                        company: widget.company..type = _chips,
                      ),
                    ));
              })
            ],
          ),
        ),
      ),
    );
  }
}

class RecruiterStepThree extends StatefulWidget {
  final Company company;

  RecruiterStepThree({@required this.company});

  @override
  _RecruiterStepFourState createState() => _RecruiterStepFourState();
}

class _RecruiterStepFourState extends State<RecruiterStepThree> {
  var _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: <Widget>[
                MyWidget.createResumeTitle("Mô tả công việc"),
                Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: Center(
                    child: TextField(
                      maxLines: 15,
                      controller: _controller,
                      decoration: InputDecoration(
                        hintText: "Mô tả",
                        labelText: "Mô tả công việc",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                  ),
                ),
                MyWidget.prevNextButton(() {
                  Navigator.pop(context);
                }, () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => RecruiterStepFive(
                          company: widget.company
                            ..description = _controller.text,
                        ),
                      ));
                })
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class RecruiterStepFive extends StatefulWidget {
  final Company company;

  RecruiterStepFive({@required this.company});

  @override
  _RecruiterStepFiveState createState() => _RecruiterStepFiveState();
}

class _RecruiterStepFiveState extends State<RecruiterStepFive> {
  var _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              children: <Widget>[
                MyWidget.createResumeTitle("Yêu cầu ứng viên"),
                Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: Center(
                    child: TextField(
                      maxLines: 15,
                      controller: _controller,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                  ),
                ),
                MyWidget.prevNextButton(() {
                  Navigator.pop(context);
                }, () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => RecruiterStepSix(
                          company: widget.company
                            ..description = _controller.text,
                        ),
                      ));
                })
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class RecruiterStepSix extends StatefulWidget {
  final Company company;

  RecruiterStepSix({@required this.company});

  @override
  State createState() {
    return _RecruiterStepSix();
  }
}

class _RecruiterStepSix extends State<RecruiterStepSix> {
  var _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              children: <Widget>[
                MyWidget.createResumeTitle("Phúc lợi"),
                Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: Center(
                    child: TextField(
                      maxLines: 15,
                      controller: _controller,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                  ),
                ),
                MyWidget.prevNextButton(() {
                  Navigator.pop(context);
                }, () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => RecruiterLastStep(
                          company: widget.company
                            ..description = _controller.text,
                        ),
                      ));
                })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
