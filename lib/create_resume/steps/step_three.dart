import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:niu_job/resources/my_widget.dart';
import 'package:niu_job/resources/strings.dart';

class StepThree extends StatelessWidget {
  var _startDate = TextEditingController();
  var _endDate = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              MyWidget.createResumeTitle(Strings.textCreateResumeTitle),
              Text(Strings.textEducation,
                  style: TextStyle(
                    fontSize: 18,
                  )),
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: Strings.textSchoolHint,
                      labelText: Strings.textSchoolLabel,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      prefixIcon: Icon(FontAwesomeIcons.school)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: Strings.textDegreeHint,
                      labelText: Strings.textDegreeLabel,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      prefixIcon: Icon(Icons.school)),
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
                              _startDate.text = "${dateTime.year}/${dateTime.month}";
                            },
                            toolbarOptions: ToolbarOptions(
                                copy: false,
                                cut: false,
                                paste: false,
                                selectAll: false),
                            decoration: InputDecoration(
                                labelText: Strings.textFromDate,
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
                              _endDate.text = "${dateTime.year}/${dateTime.month}";
                            },
                            toolbarOptions: ToolbarOptions(
                                copy: false,
                                cut: false,
                                paste: false,
                                selectAll: false),
                            decoration: InputDecoration(
                                labelText: Strings.textFromDate,
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
              MyWidget.prevNextButton(() {}, () {})
            ],
          ),
        ),
      ),
    );
  }
}
