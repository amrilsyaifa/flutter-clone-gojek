import 'package:clone_gojek/ui/screens/user.dart';
import 'package:flutter/material.dart';
import 'package:clone_gojek/ui/screens/home.dart';
import 'package:clone_gojek/ui/screens/profile.dart';

import '../../common/my_colors.dart';

class HomeBottomNavigation extends StatefulWidget {
  const HomeBottomNavigation({ Key? key }) : super(key: key);

  @override
  _HomeBottomNavigationState createState() => _HomeBottomNavigationState();
}

class _HomeBottomNavigationState extends State<HomeBottomNavigation> {
   List showWidget = [
    const HomeScreen(),
    const UserScreen(),
    const ProfileScreen(),
  ];


   int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: null,
      body: showWidget[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: MyColors.green,
          unselectedItemColor: MyColors.gray,
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.people), label: 'User'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
          ]),
    );
  }
}