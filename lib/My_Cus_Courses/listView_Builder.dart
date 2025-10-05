import 'package:flutter/material.dart';

class ListView_Builder extends StatefulWidget {
  const ListView_Builder({super.key});

  @override
  State<ListView_Builder> createState() => _ListView_BuilderState();
}

class _ListView_BuilderState extends State<ListView_Builder> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 215,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 4,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
              width: 160,
              height: 320,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Stack(
                        children: [
                         Image.network(
                          "https://tinypng.com/static/images/boat.png",
                          fit: BoxFit.cover,
                        ),
                          Positioned(
                            top: 10,left: 10,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(8)
                                ),
                                  child: Icon(Icons.favorite,color: Colors.deepPurpleAccent,)),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      "WordPress for Beginners Master......",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 4),
                    Row(
                      children: [
                        Icon(Icons.star, color: Colors.orange, size: 16),
                        Text(
                          "5.0 (30 Review)",
                          style: TextStyle(color: Colors.grey, fontSize: 10),
                        ),
                      ],
                    ),
                    SizedBox(height: 4),
                    LinearProgressIndicator(
                      value: 0.55,
                      backgroundColor: Colors.grey.shade200,
                      color: Colors.deepPurple,
                      minHeight: 6,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    SizedBox(height: 5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "55% completed",
                          style: TextStyle(color: Colors.grey, fontSize: 10),
                        ),
                        Text(
                          "4/10",
                          style: TextStyle(color: Colors.grey, fontSize: 10),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
