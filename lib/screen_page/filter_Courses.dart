import 'package:flutter/material.dart';
import '../Custom_Widget_For_All/elevated_button.dart';
import '../Custom_Widget_For_All/cus_Text.dart';
import '../Custom_Widget_For_All/custom_Menu_Icon.dart';
import '../Custom_Widget_For_All/text_form_field.dart';
import '../Custom_Widget_For_All/top_Row.dart';

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
                    Text_Form_Field(filled: true,fillColor:Colors.grey[200],hinText: "Search",preIcon: Icons.search,),
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
                    Text_Form_Field(filled: true,fillColor:Colors.grey[200],hinText: "All category",sufIcon: Icons.keyboard_arrow_down,),
                    // SizedBox(height: 12,),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Cus_Text(text: 'Sub Category'),
                    ),
                    //SizedBox(height: 12,),
                    Text_Form_Field(filled: true,fillColor:Colors.grey[200],hinText: "All sub category",sufIcon: Icons.keyboard_arrow_down,),
                    //SizedBox(height: 12,),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Cus_Text(text: 'Pricing'),
                    ),
                    //SizedBox(height: 12,),
                    Text_Form_Field(filled: true,fillColor:Colors.grey[200],hinText: "All price",sufIcon: Icons.keyboard_arrow_down,),
                    // SizedBox(height: 12,),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Cus_Text(text: 'Level'),
                    ),
                    // SizedBox(height: 12,),
                    Text_Form_Field(filled: true,fillColor:Colors.grey[200],hinText: "All level",sufIcon: Icons.keyboard_arrow_down,),
                    // SizedBox(height: 12,),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Cus_Text(text: 'Language'),
                    ),
                    // SizedBox(height: 12,),
                    Text_Form_Field(filled: true,fillColor:Colors.grey[200],hinText: "All language",sufIcon: Icons.keyboard_arrow_down,),
                    SizedBox(height: 16,),
                    Elevated_Button(text: 'Filter',width: 100,onPressed: (){},)
                  ],
                ),
              ),
            ),
            Custom_Menu_Icon(),
          ],
        ),
      ),
     // bottomNavigationBar: CustomBottomNavBar(selectedIndex:_selectedIndex, onItemTapped: (int ) {  },),
    );
  }
}
