import 'package:flutter/material.dart';

import '../screen_page/filter_Courses.dart';

class TextField_Cus extends StatelessWidget {
  const TextField_Cus({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextField(
            decoration: InputDecoration(
              hintText: "Search",
              prefixIcon: Icon(Icons.search),
              filled: true,
              fillColor: Colors.grey.shade200,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide.none,
              ),
            ),
          ),
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
          // child: Icon(Icons.tune,color: Colors.white,),
          child: IconButton(onPressed: (){
            Navigator.push(context,MaterialPageRoute(builder: (context)=>Filter_Courses()));
          }, icon: Icon(Icons.tune,color: Colors.white,)),


        )
      ],
    );
  }
}
