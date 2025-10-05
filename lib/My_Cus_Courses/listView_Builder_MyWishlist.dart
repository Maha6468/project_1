import 'package:flutter/material.dart';

class ListView_Builder_MyWishlist extends StatefulWidget {
  const ListView_Builder_MyWishlist({super.key});

  @override
  State<ListView_Builder_MyWishlist> createState() => _ListView_Builder_MyWishlistState();
}

class _ListView_Builder_MyWishlistState extends State<ListView_Builder_MyWishlist> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(height: MediaQuery.of(context).size.height,
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: 5,
        itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 140,width:160,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                Image.network(
                  "https://tinypng.com/static/images/boat.png",
                  width: 110,height: 120,
                  fit: BoxFit.cover,),
                SizedBox(width: 7,),
                Column(
                  children: [
                    Text(
                      "WordPress for Beginners Master......",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                )

              ],
            ),
          ),
        );
      },),
    );
  }
}
