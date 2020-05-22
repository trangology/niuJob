import 'package:flutter/material.dart';
import 'package:niu_job/models/companies.dart';
import 'package:niu_job/recruiter/step_one.dart';
import 'package:niu_job/resources/my_widget.dart';

class RecruiterStepZero extends StatelessWidget {
  var _companyName = TextEditingController();
  var _address = TextEditingController();
  var _email = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
          child: Column(
            children: <Widget>[
              MyWidget.createResumeTitle("Thông tin nhà tuyển dụng"),
              Padding(
                padding: EdgeInsets.only(top: 16),
                child: TextField(
                  controller: _companyName,
                  decoration: InputDecoration(
                      hintText: "Tên công ty",
                      labelText: "Tên công ty",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      )),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 8),
                child: TextField(
                  controller: _address,
                  decoration: InputDecoration(
                      hintText: "Địa chỉ",
                      labelText: "Địa chỉ công ty",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      )),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 8),
                child: TextField(
                  controller: _email,
                  decoration: InputDecoration(
                      hintText: "Email",
                      labelText: "Email",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      )),
                ),
              ),
              MyWidget.prevNextButton(() {
                Navigator.pop(context);
              }, () {
                var company = Company(
                    email: _email.text,
                    address: _address.text,
                    companyName: _companyName.text);

                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => RecruiterStepOne(
                              company: company,
                            )));
              })
            ],
          ),
        ),
      ),
    );
  }
}
