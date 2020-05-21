import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:niu_job/candicate/create_resume/steps/step_one.dart';
import 'package:niu_job/candicate/create_resume/steps/your_location.dart';
import 'package:niu_job/resources/my_widget.dart';
import 'package:niu_job/resources/strings.dart';

class StartCreateResume extends StatelessWidget {

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
                padding: const EdgeInsets.only(top: 16.0, bottom: 16),
                child: Text(Strings.textCreateResumeSubtitle,
                    style: TextStyle(
                      fontSize: 14,
                      fontStyle: FontStyle.italic,
                    )),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 32),
                child: Center(
                  child: Column(
                    children: <Widget>[
                      Text("Bạn đã có sơ yếu lý lịch trên LinkedIn?", style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500
                      )),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Text("(Ứng dụng dẽ tự động lấy thông tin của bạn và điền theo form sơ yếu lý lịch có sẵn)"),
                      )
                    ],
                  ),
                ),
              ),
              Center(
                child: Column(
                  children: <Widget>[
                    RaisedButton.icon(onPressed: () {}, icon: Icon(FontAwesomeIcons.linkedin), label: Text("Kết nối tới LinkedIn")),
                    OutlineButton.icon(onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => YourLocation()));
                    }, icon: Icon(Icons.add), label: Text("Chưa có? Tạo sơ yếu lý lịch mới")),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}