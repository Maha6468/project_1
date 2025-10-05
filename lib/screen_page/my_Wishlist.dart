import 'package:flutter/material.dart';

import '../My_Cus_Courses/listView_Builder_MyWishlist.dart';
import '../My_Cus_Courses/myCourses_Second_Row.dart';
import '../My_Cus_Courses/myCourses_TextField.dart';
import '../My_Cus_Courses/myCourses_Top_Row.dart';

class My_Wishlist extends StatefulWidget {
  const My_Wishlist({super.key});

  @override
  State<My_Wishlist> createState() => _My_WishlistState();
}

class _My_WishlistState extends State<My_Wishlist> {
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
                Top_Row(text: 'My Wishlist',),
                SizedBox(height: 15,),
                TextField_Cus(),
                SizedBox(height: 12,),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Text("Popular Course",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                ),
                SizedBox(height: 12,),
                ListView_Builder_MyWishlist(),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
