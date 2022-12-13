// ignore_for_file: prefer_const_constructors

import 'package:finalp/pages/club_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'Home_Page.dart';
import 'Profile_Page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;
  var pages = [HomePage(), ClubView(), ProfilePage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.purple,
      //   title: Text("Coder"),
      // ),
      body: Container(
        child: pages[_currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xff000000),
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
              color: Color(0xff4829cf),
              size: 30,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.map_outlined,
                color: Color(0xff4829cf),
                size: 30,
              ),
              label: "Clubs"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: Color(0xff4829cf),
                size: 30,
              ),
              label: "Profile"),
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        selectedItemColor: Color(0xff4829cf),
        onTap: _onItemSelected,
      ),
    );
  }

  void _onItemSelected(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
