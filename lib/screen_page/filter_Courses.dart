import 'package:flutter/material.dart';
import 'package:project_1/Cus_Wid_For_All/cus_Text.dart';

import '../Cus_Wid_For_All/bottomNavigationBar.dart';
import '../Cus_Wid_For_All/button.dart';
import '../Cus_Wid_For_All/custom_Menu_Icon.dart';
import '../Cus_Wid_For_All/text_F_Field.dart';
import '../Cus_Wid_For_All/text_F_Field_with_Icon.dart';
import '../My_Cus_Courses/myCourses_Top_Row.dart';

class Filter_Courses extends StatefulWidget {
  const Filter_Courses({super.key});

  @override
  State<Filter_Courses> createState() => _Filter_CoursesState();
}

class _Filter_CoursesState extends State<Filter_Courses> {
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
                  mainAxisAlignment: MainAxisAlignment.center,
                
                  children: [
                    Top_Row(text: 'Filter Courses'),
                    SizedBox(height: 20),
                    Text_F_Field_With_Icon(
                      hintText: "Search",
                      prefixIcon: Icon(Icons.search),
                    ),
                    SizedBox(height: 12),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Cus_Text(text: "Category"),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            "Reset",
                            style: TextStyle(color: Colors.deepPurpleAccent),
                          ),
                        ),
                      ],
                    ),
                    // SizedBox(height: 12,),
                    Text_F_Field_With_Icon(
                      hintText: "All category",
                      suffixIcon: Icon(Icons.keyboard_arrow_down),
                    ),
                    // SizedBox(height: 12,),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Cus_Text(text: 'Sub Category'),
                    ),
                    //SizedBox(height: 12,),
                    Text_F_Field_With_Icon(
                      hintText: "All sub category",
                      suffixIcon: Icon(Icons.keyboard_arrow_down),
                    ),
                    //SizedBox(height: 12,),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Cus_Text(text: 'Pricing'),
                    ),
                    //SizedBox(height: 12,),
                    Text_F_Field_With_Icon(
                      hintText: "All price",
                      suffixIcon: Icon(Icons.keyboard_arrow_down),
                    ),
                    // SizedBox(height: 12,),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Cus_Text(text: 'Level'),
                    ),
                    // SizedBox(height: 12,),
                    Text_F_Field_With_Icon(
                      hintText: "All level",
                      suffixIcon: Icon(Icons.keyboard_arrow_down),
                    ),
                    // SizedBox(height: 12,),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Cus_Text(text: 'Language'),
                    ),
                    // SizedBox(height: 12,),
                    Text_F_Field_With_Icon(
                      hintText: "All language",
                      suffixIcon: Icon(Icons.keyboard_arrow_down),
                    ),
                    SizedBox(height: 16,),
                    Elevate_Button(text: 'Filter',width: 100,)
                  ],
                ),
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
