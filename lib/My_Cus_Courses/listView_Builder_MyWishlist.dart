import 'package:flutter/material.dart';

//import '../Cus_Wid_For_All/custom_Menu_Icon.dart';

class ListView_Builder_MyWishlist extends StatefulWidget {
  const ListView_Builder_MyWishlist({super.key});

  @override
  State<ListView_Builder_MyWishlist> createState() =>
      _ListView_Builder_MyWishlistState();
}

class _ListView_Builder_MyWishlistState
    extends State<ListView_Builder_MyWishlist> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height*0.6,
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: 20,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(7.0),
            child: Stack(
              children: [
                Container(
                  height: 130,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Stack(
                          children: [
                            Image.network(
                              "https://tinypng.com/static/images/boat.png",
                              width: 110,
                              height: 120,
                              fit: BoxFit.cover,
                            ),
                            Positioned(
                              top: 10,
                              left: 10,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Icon(
                                  Icons.favorite,
                                  color: Colors.deepPurpleAccent,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 7),
                      Expanded(
                        child: Column(
                          children: [
                            SizedBox(height: 15),
                            Text(
                              "WordPress for Beginners Master",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 5),
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.orange,
                                  size: 16,
                                ),
                                Text("5.0 (30 Reviews)"),
                              ],
                            ),
                            SizedBox(height: 5),
                            Align(
                              alignment: Alignment.bottomLeft,
                              child: Text(
                                "\$15.00",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 60,
                  right: 10,
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey.shade200,
                    ),
                    child: const Icon(Icons.remove, color: Colors.black),
                  ),
                ),
              ],

            ),
          );
        },
      ),
    );
  }
}
