import 'package:flutter/material.dart';

import '../Cus_Wid_For_All/text_F_Field.dart';
import '../Cus_Wid_For_All/text_F_Field_with_Icon.dart';
import '../My_Cus_Courses/myCourses_Top_Row.dart';

class Filter_Courses extends StatefulWidget {
  const Filter_Courses({super.key});

  @override
  State<Filter_Courses> createState() => _Filter_CoursesState();
}

class _Filter_CoursesState extends State<Filter_Courses> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Top_Row(text: 'Filter Courses',),
              SizedBox(height: 20,),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Search',
                  filled: true,
                  fillColor: Colors.grey[200],
                  prefixIcon: Icon(Icons.search),
                  contentPadding: EdgeInsets.symmetric(
                      vertical: 10, horizontal: 20),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              SizedBox(height: 12,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Category",style: TextStyle(fontWeight: FontWeight.bold, fontSize:18),),
                  TextButton(onPressed: (){}, child: Text("Reset",style: TextStyle(color: Colors.deepPurpleAccent),))
                ],
              ),
              SizedBox(height: 12,),
              Text_F_Field_With_Icon(label1: 'All category',suffixIcon: Icon(Icons.keyboard_arrow_down),fillColor: Colors.grey[200],)


            ],
          ),
        ),
      ),
    );
  }
}
