import 'package:flutter/material.dart';
import 'package:project_1/My_Cus_Courses/myCourses_Second_Row.dart';
import 'package:project_1/My_Cus_Courses/myCourses_Top_Row.dart';

import '../Cus_Wid_For_All/bottomNavigationBar.dart';
import '../Cus_Wid_For_All/custom_Menu_Icon.dart';
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
        child: Stack(
          children: [
           Padding(
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
            Custom_Menu_Icon(),
          ]
        ),
      ),

       // bottomNavigationBar: CustomBottomNavBar(selectedIndex: _selectedIndex, onItemTapped: (int ) {  },),

    );
  }
}
