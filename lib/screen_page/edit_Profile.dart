import 'package:flutter/material.dart';

import '../Cus_Wid_For_All/bottomNavigationBar.dart';
import '../Cus_Wid_For_All/button.dart';
import '../Cus_Wid_For_All/custom_Menu_Icon.dart';
import '../Edit_Profile_cus/circle_Image.dart';
import '../Edit_Profile_cus/textField.dart';
import '../My_Cus_Courses/myCourses_Top_Row.dart';

class Edit_Profile extends StatefulWidget {
  const Edit_Profile({super.key});

  @override
  State<Edit_Profile> createState() => _Edit_ProfileState();
}

class _Edit_ProfileState extends State<Edit_Profile> {
  int _selectedIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Top_Row(text: 'Edit Profile',),
                SizedBox(height: 12,),
                Circle_Image(),
                SizedBox(height: 12,),
                TextField_Custom(text: 'First Name', HinText: 'Name',),
                TextField_Custom(text: 'Last Name', HinText: 'Name',),
                TextField_Custom(text: 'Email', HinText: 'mahabubarmaha@gmail.com',),
            
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Biography",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
                      TextField(
                        maxLines: 4,
            
            
                        decoration: InputDecoration(
                          hintText: "Write here..",
                          filled: true,
                          fillColor: Colors.grey.shade200,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide.none
                          ),
                          suffixIcon: Custom_Menu_Icon(), // small floating icon
                        ),
                      ),
                      SizedBox(height: 10,),
                      Elevate_Button(text: 'Save',width: 320,height: 40,onPressed: (){},)
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),

  //bottomNavigationBar: CustomBottomNavBar(selectedIndex: _selectedIndex, onItemTapped: (int ) {  },),

    );
  }
}
