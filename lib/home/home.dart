import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:niu_job/candicate/maps/maps_screen.dart';
import 'package:niu_job/home/page/home_screen.dart';
import 'package:niu_job/home/page/list_chat_screen.dart';
import 'package:niu_job/home/page/personal_screen.dart';
import 'package:niu_job/models/education.dart';
import 'package:niu_job/models/resume.dart';
import 'package:niu_job/models/work_experience.dart';

class Home extends StatefulWidget {
  final FirebaseUser user;

  Home({@required this.user});

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: _currentPage, children: [
        HomeScreen(user: widget.user),
        MapScreen(user: widget.user),
        ListChat(),
        PersonalScreen(
          resume: Resume(
            languageSkills: [],
            programmingLanguages: [],
            workExperience: WorkExperience(
                startDate: "2020/04/14",
                endDate: '2020/09/20',
                position: 'Android Developer',
                organizationName: 'FPT Software',
                description: 'Android Developer'),
            address: "Da Nang",
            email: 'tsnanh0812@gmail.com',
            description: "Android Developer",
            personalWebsite: 'ble',
            github: 'tsnanh',
            skype: 'ble',
            fullName: "Tran Si Nguyen Anh",
            otherSkills: ["Sleep"],
            education: Education(
                endDate: "2023/08",
                startDate: '2018/08',
                schoolName: 'VKU',
                degree: "Engineer"),
          ),
        )
      ]),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentPage,
        showSelectedLabels: false,
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: false,
        onTap: (value) {
          setState(() {
            _currentPage = value;
          });
        },
        items: [
          BottomNavigationBarItem(
              backgroundColor: Colors.orange,
              activeIcon: Icon(Icons.home),
              icon: Icon(Icons.home),
              title: Text("Home")),
          BottomNavigationBarItem(
              icon: Icon(Icons.room),
              title: Text("Maps"),
              activeIcon: Icon(Icons.room),
              backgroundColor: Colors.red),
          BottomNavigationBarItem(
              icon: Icon(Icons.chat_bubble_outline),
              title: Text('Chat'),
              activeIcon: Icon(Icons.chat_bubble),
              backgroundColor: Colors.teal),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
              title: Text('Personal Page'),
              activeIcon: Icon(Icons.person),
              backgroundColor: Colors.lightBlue)
        ],
      ),
    );
  }
}
