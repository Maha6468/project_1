import 'package:flutter/material.dart';
import 'package:project_1/screen_page/edit_Profile.dart';
import 'package:project_1/screen_page/sign_In.dart';
import 'package:project_1/screen_page/update_Password.dart';
import '../Custom_Widget_For_All/custom_Menu_Icon.dart';
import '../Edit_Profile_cus/circle_Image.dart';

class Education extends StatefulWidget {

  const Education({super.key});

  @override
  State<Education> createState() => _EducationState();
}

class _EducationState extends State<Education> {
  int _selectedIndex=0;

  void _onNavTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      decoration: BoxDecoration(
                        color: Colors.deepPurpleAccent,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(Icons.school, color: Colors.white, size: 25,)),
                  SizedBox(width: 5,),
                  Text("Education", style: TextStyle(color: Colors.deepPurpleAccent,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),),
                ],
              ),
              SizedBox(height: 5,),
              Circle_Image(),
              Text("Md.Mahabubar Rahman",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
              Text("3555045545"),
              SizedBox(height: 15,),
              Custom_TextField(text: 'Edit Profile',
                prefixIcon: Icon(Icons.person, color: Colors.deepPurpleAccent,),onPressed: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>Edit_Profile()));
                },),
              Custom_TextField(text: 'Downloaded Course',
                prefixIcon: Icon(Icons.download, color: Colors.deepPurpleAccent,),),
              Custom_TextField(text: 'Change Password',
                prefixIcon: Icon(Icons.key, color: Colors.deepPurpleAccent,),onPressed: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>Update_Password()));
                },),
              Log_Out(),
              Align(
                alignment: Alignment(.9, 3),
                  child: Custom_Menu_Icon()),
          
          
            ],
          ),
        ),
      ),

    //  bottomNavigationBar: CustomBottomNavBar(selectedIndex: _selectedIndex, onItemTapped: (int ) {  },),

    );
  }
}

class Custom_TextField extends StatelessWidget {
  final String text;
  final Widget prefixIcon;
  final Widget ? suffixIcon;
  final VoidCallback? onPressed;

  const Custom_TextField({super.key, required this.text, required this.prefixIcon, this.suffixIcon, this.onPressed,});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: TextField(
        decoration: InputDecoration(
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.grey)
          ),
          prefixIcon:prefixIcon,
          hintText:text,hintStyle: TextStyle(fontWeight: FontWeight.bold),
          suffixIcon:suffixIcon?? IconButton(onPressed:onPressed ,icon:Icon(Icons.arrow_forward_ios_rounded)),
        ),
      ),
    );
  }
}

class Log_Out extends StatelessWidget {
  const Log_Out({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Row(
        children: [
          Icon(Icons.exit_to_app_outlined,color: Colors.deepPurpleAccent,),
          TextButton(onPressed: (){
            Navigator.push(context,MaterialPageRoute(builder: (context)=>Sign_In()));
          }, child: Text("Log Out",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15),))
        ],
      ),
    );
  }
}



