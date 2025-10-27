import 'package:flutter/material.dart';
import '../Custom_Widget_For_All/custom_Menu_Icon.dart';
import '../Custom_Widget_For_All/text_form_field.dart';
import '../Custom_Widget_For_All/top_Row.dart';
import '../My_Cus_Courses/listView_Builder_MyWishlist.dart';
import 'filter_Courses.dart';

class My_Wishlist extends StatefulWidget {
  const My_Wishlist({super.key});

  @override
  State<My_Wishlist> createState() => _My_WishlistState();
}

class _My_WishlistState extends State<My_Wishlist> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Top_Row(text: 'My Wishlist'),
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
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Popular Course",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Expanded(child: ListView_Builder_MyWishlist()),

                  // Align(alignment: Alignment(.9, -.9), child: Custom_Menu_Icon(),),
                ],
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
