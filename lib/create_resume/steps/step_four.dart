import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:niu_job/create_resume/steps/step_five.dart';
import 'package:niu_job/models/resume.dart';
import 'package:niu_job/models/work_experience.dart';
import 'package:niu_job/resources/strings.dart';
import 'package:niu_job/resources/my_widget.dart';

class StepFour extends StatefulWidget {
  final Resume resume;

  StepFour({@required this.resume});
  @override
  _StepFourState createState() => _StepFourState();
}

class _StepFourState extends State<StepFour> {
  var _organizationController = TextEditingController();

  var _startDate = TextEditingController();

  var _endDate = TextEditingController();
  var _positionController = TextEditingController();
  var _descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                MyWidget.createResumeTitle(Strings.textCreateResumeTitle),

                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Text(Strings.textHintStep4,
                      style:
                          TextStyle(fontSize: 14, fontStyle: FontStyle.italic)),
                ),
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: TextField(
                  controller: _organizationController,
                  decoration: InputDecoration(
                      hintText: Strings.textInputOrganizationName,
                      labelText: Strings.textInputOrganizationLabel,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      prefixIcon: Icon(Icons.account_balance)),
                ),
              ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: TextField(
                controller: _positionController,
                decoration: InputDecoration(
                    hintText: Strings.textWorkPosition,
                    labelText: Strings.textWorkPositionLabel,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    prefixIcon: Icon(Icons.work)),
              ),
            ),
                Padding(
                  padding: EdgeInsets.only(top: 16),
                  child: Row(
                    children: <Widget>[
                      Flexible(
                        flex: 5,
                        child: FocusScope(
                          node: FocusScopeNode(canRequestFocus: false),
                          child: Padding(
                            padding: const EdgeInsets.only(right: 4.0),
                            child: TextField(
                              controller: _startDate,
                              onTap: () async {
                                var dateTime = await showDatePicker(
                                    context: context,
                                    initialDate: DateTime.now(),
                                    firstDate: DateTime(2000),
                                    lastDate: DateTime.now());
                                _startDate.text = "${dateTime.year}/${dateTime.month}/${dateTime.day}";
                              },
                              toolbarOptions: ToolbarOptions(
                                  copy: false,
                                  cut: false,
                                  paste: false,
                                  selectAll: false),
                              decoration: InputDecoration(
                                labelText: "Ngày bắt đầu",
                                  hintText: Strings.textFromDayMonthYear,
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  suffixIcon: Icon(Icons.arrow_drop_down)),
                            ),
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 5,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 4.0),
                          child: FocusScope(
                            node: FocusScopeNode(canRequestFocus: false),
                            child: TextField(
                              controller: _endDate,
                              onTap: () async {
                                var dateTime = await showDatePicker(
                                    context: context,
                                    initialDate: DateTime.now(),
                                    firstDate: DateTime(2000),
                                    lastDate: DateTime(2030));
                                _endDate.text = "${dateTime.year}/${dateTime.month}/${dateTime.day}";
                              },
                              toolbarOptions: ToolbarOptions(
                                  copy: false,
                                  cut: false,
                                  paste: false,
                                  selectAll: false),
                              decoration: InputDecoration(
                                labelText: "Ngày kết thúc",
                                  hintText: Strings.textFromDayMonthYear,
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  suffixIcon: Icon(Icons.arrow_drop_down)),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: TextField(
                  controller: _descriptionController,
                  decoration: InputDecoration(
                      hintText: "Mô tả ngắn gọn kinh nghiệm của bạn",
                      labelText: "Mô tả",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      )),
                ),
              ),
                MyWidget.prevNextButton(() {
                  Navigator.of(context).pop();
                }, () {
                  widget.resume.workExperience = WorkExperience(
                    startDate: _startDate.text,
                    endDate: _endDate.text,
                    position: _positionController.text,
                    description: _descriptionController.text,
                    organizationName: _organizationController.text
                  );
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => StepFive(resume: widget.resume)));
                })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
