import 'package:flutter/material.dart';

import '../Cus_Wid_For_All/bottomNavigationBar.dart';
import '../Cus_Wid_For_All/cus_Courses_1.dart';
import '../Cus_Wid_For_All/custom_Menu_Icon.dart';
import '../My_Cus_Courses/myCourses_Top_Row.dart';

class Courese_1 extends StatefulWidget {
  const Courese_1({super.key});

  @override
  State<Courese_1> createState() => _Courese_1State();
}

class _Courese_1State extends State<Courese_1> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    final courses = [
      {"title": "1. Responsive Design", "subtitle": "2 Courses"},
      {"title": "2. WordPress Theme", "subtitle": "3 Courses"},
      {"title": "3. Bootstrap", "subtitle": "4 Courses"},
      {"title": "4. HTML & CSS", "subtitle": "5 Courses"},
    ];

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Top_Row(text: 'Courses'),
                  SizedBox(height: 20),
                  Text(
                    "Showing 14 Courses",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                  ),
                  SizedBox(height: 15),
                  Expanded(
                    child: ListView.builder(
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        return Cus_Courses_1(
                          title: courses[index]["title"]!,
                          subtitle: courses[index]["subtitle"]!,
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            Custom_Menu_Icon(),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavBar(
          selectedIndex:_selectedIndex, onItemTapped: (int ) {  },),
    );
  }
}
