import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:niu_job/home/page/home_screen.dart';
import 'package:niu_job/maps/maps_screen.dart';

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
      body: IndexedStack(
        index: _currentPage,
        children: [
          HomeScreen(user: widget.user),
          MapScreen(user: widget.user),
          MapScreen(user: widget.user),
          MapScreen(user: widget.user),
        ],
      ),
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
            title: Text("Home")
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            title: Text("Favorite"),
            activeIcon: Icon(Icons.favorite),
            backgroundColor: Colors.red
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_bubble_outline),
            title: Text('Chat'),
            activeIcon: Icon(Icons.chat_bubble),
            backgroundColor: Colors.teal
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            title: Text('Personal Page'),
            activeIcon: Icon(Icons.person),
            backgroundColor: Colors.lightBlue
          )
        ],
      ),
    );
  }
}