import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:niu_job/home/home.dart';
import 'package:niu_job/models/companies.dart';

class RecruiterLastStep extends StatelessWidget {
  final Company company;
  final FirebaseUser user;

  RecruiterLastStep({@required this.company, this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Xin chúc mừng!!",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 34),
                ),
                Text(
                  "Bạn đã hoàn thành xong sơ yếu lý lịch của mình.",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: OutlineButton.icon(
                      onPressed: () {
                        Navigator.of(context).pushAndRemoveUntil(
                            MaterialPageRoute(
                                builder: (context) => Home(user: user)),
                            (route) => false);
                      },
                      icon: Icon(Icons.arrow_forward),
                      label: Text("TỚI BẢNG ĐIỀU KHIỂN")),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
