import 'package:flutter/material.dart';
import 'package:project_1/Cus_Wid_For_All/text_F_Field.dart';

import '../Cus_Wid_For_All/buttonNavigationBar.dart';

class My_Courses extends StatefulWidget {
  const My_Courses({super.key});

  @override
  State<My_Courses> createState() => _My_CoursesState();
}

class _My_CoursesState extends State<My_Courses> {
  int currentIndex = 0;

  final List<Map<String, dynamic>> bottomItems = [
    {"icon": Icons.home, "label": "Home"},
    {"icon": Icons.book, "label": "My Courses"},
    {"icon": Icons.favorite, "label": "Wishlist"},
    {"icon": Icons.person_2, "label": "Account"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      title: Text("My Courses"),
      centerTitle: true,
      leading:Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(8)
          ),
          child: IconButton(onPressed: (){

          },icon: Icon(Icons.arrow_back_ios_new_outlined)),
        ),
      ),
        
        actions: [
        IconButton(onPressed: (){}, icon:Icon(Icons.more_vert)),
      ],
    ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(child: Text_Form_Field(label: 'Search', filled: true,preIcon: Icons.search,),),
                    SizedBox(width: 7,),
                    SizedBox(
                      height: 50,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.deepPurpleAccent,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)
                            )
                          ),
                          onPressed: (){
          
                      }, child: Icon(Icons.sync_alt_outlined,color: Colors.white,)),
                    )
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("Popular Course",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                  TextButton(onPressed: (){},
                      child: Row(
                        children: [
                          Text("View all"),
                          Icon(Icons.arrow_forward_ios_rounded)
                        ],
                      ))
                ],
              ),
              GridView.builder(
                shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                  mainAxisSpacing: 7,
                    crossAxisSpacing: 7
                  ),
                  itemCount: 2,
                  itemBuilder: (context,index){
                    return Container(
                      height: 30,width: 20,
                      color: Colors.deepPurpleAccent,
                    );
              })
          
            ],
          ),
        ),
      ),


      bottomNavigationBar: CustomBottomNavigationBar(
        currentIndex: currentIndex,
        items: bottomItems,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text("This is ${bottomItems[index]['label']}"),
              backgroundColor: Colors.cyanAccent,
            ),
          );
        },
      ),

    );
  }
}
