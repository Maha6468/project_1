import 'package:flutter/material.dart';
import 'package:project_1/My_Cus_Courses/myCourses_Second_Row.dart';
import '../Custom_Widget_For_All/custom_Menu_Icon.dart';
import '../Custom_Widget_For_All/text_form_field.dart';
import '../Custom_Widget_For_All/top_Row.dart';
import '../My_Cus_Courses/listView_Builder_MyCourse.dart';
import 'filter_Courses.dart';

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
                  Row(
                    children: [
                      Expanded(
                        child: Text_Form_Field(preIcon:Icons.search,hinText: "Search", filled: true,),
                      ),
                      SizedBox(width: 12,),
                      Container(
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: Colors.deepPurpleAccent,
                            border: Border.all(color: Colors.white),
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: IconButton(onPressed: (){
                          Navigator.push(context,MaterialPageRoute(builder: (context)=>Filter_Courses()));
                        }, icon: Icon(Icons.tune,color: Colors.white,)),
                      )
                    ],
                  ),
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
    );
  }
}



