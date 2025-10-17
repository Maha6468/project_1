import 'package:flutter/material.dart';

import '../Cus_Wid_For_All/bottomNavigationBar.dart';
import '../Cus_Wid_For_All/custom_Menu_Icon.dart';
import '../My_Cus_Courses/listView_Builder_MyCourse.dart';
import '../My_Cus_Courses/listView_Builder_MyWishlist.dart';
import '../My_Cus_Courses/myCourses_Second_Row.dart';
import '../My_Cus_Courses/myCourses_Top_Row.dart';

class Coursee_2 extends StatefulWidget {
  const Coursee_2({super.key});

  @override
  State<Coursee_2> createState() => _Coursee_2State();
}

class _Coursee_2State extends State<Coursee_2> {
  int _selectedIndex=0;
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
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(height: 20),
                    Top_Row(text: 'Courses'),
                    SizedBox(height: 10),
                    Second_Row(text: 'Top Course', text_second: 'All Courses'),
                    SizedBox(height: 10),
                    ListView_Builder(),
                    SizedBox(height: 10),
                    Second_Row(
                      text: 'Course Categories',
                      text_second: 'All Courses',
                    ),
                    SizedBox(height: 10),
                    ListView_Builder_MyWishlist(),
                  ],
                ),
              ),
            ),
           // Custom_Menu_Icon(),
          ],
        ),
      ),
     // bottomNavigationBar: CustomBottomNavBar(selectedIndex:_selectedIndex, onItemTapped: (int ) {  },),
    );
  }
}
