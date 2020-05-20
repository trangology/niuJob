import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:niu_job/resources/my_widget.dart';
import 'package:niu_job/resources/strings.dart';

import 'your_location.dart';

class StepZero extends StatelessWidget {
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
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: Text(
                  Strings.textCreateResumeSubtitle,
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                      fontStyle: FontStyle.italic),
                ),
              ),
              Expanded(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("Bạn đã có resume trên LinkedIn?",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w500)),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Text(
                          "Ứng dụng sẽ tự động lấy thông tin của bạn và điền theo form có sẵn.",
                          style: TextStyle(fontStyle: FontStyle.italic),
                        ),
                      ),
                      SizedBox(
                          width: double.infinity,
                          child: RaisedButton.icon(
                              onPressed: null,
                              icon: Icon(FontAwesomeIcons.linkedin),
                              label: Text("Kết nối với LinkedIn"))),
                      SizedBox(
                        width: double.infinity,
                        child: OutlineButton.icon(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => YourLocation()));
                            },
                            icon: Icon(Icons.add),
                            label: Text("Chưa có? Tạo resume mới.")),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
