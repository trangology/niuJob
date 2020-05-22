import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:niu_job/models/companies.dart';
import 'package:niu_job/resources/my_widget.dart';
import 'package:niu_job/resources/strings.dart';

import 'last_recruiter_step.dart';

class RecruiterStepSeven extends StatefulWidget {
  final Company company;

  RecruiterStepSeven({@required this.company});

  @override
  _RecruiterStepSevenState createState() => _RecruiterStepSevenState();
}

class _RecruiterStepSevenState extends State<RecruiterStepSeven> {
  var _startDate = TextEditingController();

  var _endDate = TextEditingController();
  var _salaryFrom = TextEditingController();
  var _salaryTo = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                MyWidget.createResumeTitle("Mức lương"),
                Padding(
                  padding: EdgeInsets.only(top: 16),
                  child: Row(
                    children: <Widget>[
                      Flexible(
                        flex: 4,
                        child: Padding(
                          padding: const EdgeInsets.only(right: 4.0),
                          child: TextField(
                            controller: _salaryFrom,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8)),
                                hintText: 'Từ'),
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 4,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 4.0),
                          child: TextField(
                            controller: _salaryTo,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8)),
                                hintText: 'Đến'),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: 'Lương theo thỏa thuận',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8)),
                        labelText: "Lương theo thỏa thuận"),
                  ),
                ),
                MyWidget.createResumeTitle("Nơi làm việc"),
                Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Địa chỉ cụ thể',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8)),
                    ),
                  ),
                ),
                MyWidget.createResumeTitle("Thời gian tuyển dụng"),
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
                                _startDate.text =
                                    "${dateTime.year}/${dateTime.month}/${dateTime.day}/${dateTime.day}";
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
                                _endDate.text =
                                    "${dateTime.year}/${dateTime.month}/${dateTime.day}/${dateTime.day}";
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
                MyWidget.prevNextButton(() {}, () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            RecruiterLastStep(company: widget.company),
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
