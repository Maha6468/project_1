import 'package:flutter/material.dart';
import 'package:project_1/My_Cus_Courses/myCourses_Second_Row.dart';
import 'package:project_1/My_Cus_Courses/myCourses_Top_Row.dart';

import '../My_Cus_Courses/listView_Builder_MyCourse.dart';
import '../My_Cus_Courses/myCourses_TextField.dart';
import 'login_In.dart';
import 'my_Wishlist.dart';

class My_Courses extends StatefulWidget {
  const My_Courses({super.key});

  @override
  State<My_Courses> createState() => _My_CoursesState();
}

class _My_CoursesState extends State<My_Courses> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Top_Row(text: 'My Courses'),
                SizedBox(height: 15),
                TextField_Cus(),
                SizedBox(height: 12),
                Second_Row(text: 'Popular Courses', text_second: 'View all'),
                SizedBox(height: 1),
                ListView_Builder(),
                SizedBox(height: 1),
                Second_Row(text: 'Recommended', text_second: 'View all'),
                ListView_Builder(),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.deepPurple,
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },

        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.book), label: "My Course"),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: "Wishlist",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Account"),
        ],
      ),
    );
  }
}
