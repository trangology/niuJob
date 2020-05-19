import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:niu_job/resources/strings.dart';
import 'package:niu_job/resources/my_widget.dart';

class StepFour extends StatelessWidget {
  var _organizationController = TextEditingController();
  var _startDate = TextEditingController();
  var _endDate = TextEditingController();

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
                MyWidget.textField(Strings.textInputOrganizationLabel,
                    Strings.textInputOrganizationName, Icon(Icons.account_balance), 1),
                MyWidget.textField(Strings.textWorkPositionLabel, Strings.textWorkPosition, Icon(Icons.work), 1),
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
                MyWidget.textField("Kinh nghiệm làm việc", "Mô tả ngắn gọn kinh nghiệm làm việc của bạn tại đây.", null, 7),
                MyWidget.prevNextButton(() {}, () {})
              ],
            ),
          ),
        ),
      ),
    );
  }
}
