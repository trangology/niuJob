import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:niu_job/models/companies_post.dart';
import 'package:niu_job/models/salary.dart';
import 'package:niu_job/models/tags.dart';
import 'package:niu_job/models/time.dart';

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
            var post = _posts[index];
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
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
                          Text(post.positions[0], style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 20
                          ),),
                          Padding(
                            padding: const EdgeInsets.only(top:8.0),
                            child: Text('Công ty cổ phần NoName'),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  WidgetSpan(
                                    child: Icon(Icons.room, size: 20)
                                  ),
                                  TextSpan(text: post.description, style: TextStyle(color: Colors.black))
                                ]
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 8),
                            child: Text(post.salary.from + " - " + post.salary.to, style: TextStyle(
                              color: Colors.purple, fontSize: 16
                            ))
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 8),
                            child: Text(post.time.from),
                          ),
                          Wrap(
                            children: (post.salaryType as List).map((e) => Padding(
                              padding: const EdgeInsets.only(right: 8.0),
                              child: Chip(label: Text(e.name)),
                            )).toList(),
                          )
                        ],
                      )
                    ],
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
];
