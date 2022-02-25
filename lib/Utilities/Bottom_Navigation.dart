import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nearby/Screens/profilePage.dart';
import '../Screens/homePage.dart';
import '../Screens/Login_Page.dart';

class BottomNavigation extends State<Home> {
  int _currentIndex = 0;
  final List _children = [
    HomePage(),
    Login(),
    Login(),
    ProfilePage(),
  ];
  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Color(0xff5A559F),
        unselectedItemColor: Colors.black,
        currentIndex: _currentIndex, // this will be set when a new tab is tapped
        onTap: onTabTapped,
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: new Icon(
              Icons.history_outlined,
            ),
            label: 'Messages',
          ),
          BottomNavigationBarItem(
            icon: new Icon(
              Icons.apartment_outlined,
            ),
            label: 'services',
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.person),
            label: 'Profile',
          )
        ],
      ),

    );
  }
}