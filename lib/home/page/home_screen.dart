import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:niu_job/models/companies_post.dart';
import 'package:niu_job/models/salary.dart';
import 'package:niu_job/models/tags.dart';
import 'package:niu_job/models/time.dart';

import 'job_screen.dart';

class HomeScreen extends StatefulWidget {
  final FirebaseUser user;

  HomeScreen({Key key, @required this.user}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView.builder(
          itemCount: _posts.length,
          itemBuilder: (context, index) {
            CompaniesPost post = _posts[index];
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => JobScreen(
                            post: post,
                          ),
                        ));
                  },
                  child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Row(
                      children: <Widget>[
                        SizedBox(
                          child: Image.network(
                              'https://storage.googleapis.com/gweb-uniblog-publish-prod/images/Android_symbol_green_2.max-1500x1500.png'),
                          height: 64,
                          width: 64,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              post.positions[0],
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 20),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Text('Công ty cổ phần NoName'),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: RichText(
                                text: TextSpan(children: [
                                  WidgetSpan(child: Icon(Icons.room, size: 20)),
                                  TextSpan(
                                      text: post.description,
                                      style: TextStyle(color: Colors.black))
                                ]),
                              ),
                            ),
                            Padding(
                                padding: EdgeInsets.only(top: 8),
                                child: Text(
                                    post.salary.from + " - " + post.salary.to,
                                    style: TextStyle(
                                        color: Colors.purple, fontSize: 16))),
                            Padding(
                              padding: EdgeInsets.only(top: 8),
                              child: Text(post.time.from),
                            ),
                            Wrap(
                              children: (post.salaryType as List)
                                  .map((e) => Padding(
                                        padding:
                                            const EdgeInsets.only(right: 8.0),
                                        child: Chip(label: Text(e.name)),
                                      ))
                                  .toList(),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
List<CompaniesPost> _posts = [
  CompaniesPost(
      positions: ["Android Developer"],
      description: 'Đà Nẵng',
      salary: Salary("600\$", "1000\$"),
      time: Time(
          from: "20/5/2020"
      ),
      salaryType: [
        Tags(
            name: "Fulltime"
        ),
        Tags(
            name: "Internship"
        ),
        Tags(
            name: "English"
        ),
      ]
  ),
  CompaniesPost(
      positions: ["Web Developer"],
      description: 'Huế',
      salary: Salary("800\$", "1200\$"),
      time: Time(
          from: "23/5/2020"
      ),
      salaryType: [
        Tags(
            name: "Parttime"
        ),
        Tags(
            name: "Internship"
        ),
        Tags(
            name: "English"
        ),
      ]
  ),
  CompaniesPost(
      positions: ["Android Developer"],
      description: 'Đà Nẵng',
      salary: Salary("1000\$", "1500\$"),
      time: Time(
          from: "20/6/2020"
      ),
      salaryType: [
        Tags(
            name: "Fulltime"
        ),
        Tags(
            name: "Employer"
        ),
        Tags(
            name: "Japanese"
        ),
      ]
  ),
  CompaniesPost(
      positions: ["Java Developer"],
      description: 'Sài Gòn',
      salary: Salary("600\$", "1000\$"),
      time: Time(
          from: "20/3/2020"
      ),
      salaryType: [
        Tags(
            name: "Fulltime"
        ),
        Tags(
            name: "Internship"
        ),
        Tags(
            name: "English"
        ),
      ]
  ),
  CompaniesPost(
      positions: ["Fullstack Developer"],
      description: 'Đà Nẵng',
      salary: Salary("900\$", "1000\$"),
      time: Time(
          from: "22/7/2020"
      ),
      salaryType: [
        Tags(
            name: "Parttime"
        ),
        Tags(
            name: "Internship"
        ),
        Tags(
            name: "English"
        ),
      ]
  ),
  CompaniesPost(
      positions: ["Angular JS Developer"],
      description: 'Đà Nẵng',
      salary: Salary("700\$", "1000\$"),
      time: Time(
          from: "24/7/2020"
      ),
      salaryType: [
        Tags(
            name: "Fulltime"
        ),
        Tags(
            name: "Employer"
        ),
        Tags(
            name: "French"
        ),
      ]
  ),
  CompaniesPost(
      positions: ["Fullstack Web Developer"],
      description: 'Đà Nẵng',
      salary: Salary("1000\$", "2000\$"),
      time: Time(
          from: "08/2020"
      ),
      salaryType: [
        Tags(
            name: "Html"
        ),
        Tags(
            name: "Internship"
        ),
        Tags(
            name: "English"
        ),
      ]
  ),
  CompaniesPost(
      positions: ["Tester"],
      description: 'Đà Nẵng',
      salary: Salary("800\$", "1000\$"),
      time: Time(
          from: "20/5/2020"
      ),
      salaryType: [
        Tags(
            name: "Java"
        ),
        Tags(
            name: "Employer"
        ),
        Tags(
            name: "English"
        ),
      ]
  ),
  CompaniesPost(
      positions: ["PHP Developer"],
      description: 'Đà Nẵng',
      salary: Salary("600\$", "1000\$"),
      time: Time(
          from: "20/5/2020"
      ),
      salaryType: [
        Tags(
            name: "PHP"
        ),
        Tags(
            name: "Internship"
        ),
        Tags(
            name: "English"
        ),
      ]
  ),
  CompaniesPost(
      positions: ["Database Manager"],
      description: 'Đà Nẵng',
      salary: Salary("1000\$", "1500\$"),
      time: Time(
          from: "22/5/2020"
      ),
      salaryType: [
        Tags(
            name: "Fulltime"
        ),
        Tags(
            name: "Internship"
        ),
        Tags(
            name: "English"
        ),
      ]
  ),
  CompaniesPost(
      positions: ["Backend Developer"],
      description: 'Đà Nẵng',
      salary: Salary("600\$", "1000\$"),
      time: Time(
          from: "20/5/2020"
      ),
      salaryType: [
        Tags(
            name: "Python"
        ),
        Tags(
            name: "Employer"
        ),
        Tags(
            name: "English"
        ),
      ]
  ),
  CompaniesPost(
      positions: ["Flutter Developer"],
      description: 'Đà Nẵng',
      salary: Salary("600\$", "1000\$"),
      time: Time(
          from: "20/5/2020"
      ),
      salaryType: [
        Tags(
            name: "Dart"
        ),
        Tags(
            name: "Internship"
        ),
        Tags(
            name: "English"
        ),
      ]
  ),
  CompaniesPost(
      positions: ["Android Developer"],
      description: 'Đà Nẵng',
      salary: Salary("600\$", "1000\$"),
      time: Time(
          from: "20/5/2020"
      ),
      salaryType: [
        Tags(
            name: "Flutter"
        ),
        Tags(
            name: "Dart"
        ),
        Tags(
            name: "English"
        ),
      ]
  ),
];
