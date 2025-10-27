import 'package:flutter/material.dart';
import 'package:project_1/screen_page/courses_1.dart';
import 'package:project_1/screen_page/my_Courses.dart';
import 'package:project_1/screen_page/my_Wishlist.dart';
import 'package:project_1/screen_page/edit_Profile.dart';

//import '../Cus_Wid_For_All/bottomNavigationBar.dart';
//import '../Cus_Wid_For_All/custom_Bottom_Nav_Bar.dart';
import '../Custom_Widget_For_All/bottomNavigationBar.dart';
import 'education.dart'; // তোমার CustomBottomNavBar file path

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const Courese_1(),
    const My_Courses(),
    const My_Wishlist(),
    const Education(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: CustomBottomNavBar(
        selectedIndex: _selectedIndex,
        onItemTapped: _onItemTapped,
      ),
    );
  }
}
