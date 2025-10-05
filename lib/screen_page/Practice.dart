import 'package:flutter/material.dart';

class MyWishlistPage extends StatefulWidget {
  const MyWishlistPage({super.key});

  @override
  State<MyWishlistPage> createState() => _MyWishlistPageState();
}

class _MyWishlistPageState extends State<MyWishlistPage> {
  int _selectedIndex = 2; // Wishlist active থাকবে

  // Dummy data (course list)
  final List<Map<String, String>> courses = [
    {
      "title": "WordPress for Beginners Master",
      "rating": "5.0",
      "reviews": "(30 Reviews)",
      "price": "\$15.00",
      "image":
      "https://cdn-icons-png.flaticon.com/512/906/906343.png", // তুমি চাইলে যেকোনো ইমেজ দিতে পারো
    },
    {
      "title": "WordPress for Beginners Master",
      "rating": "5.0",
      "reviews": "(30 Reviews)",
      "price": "\$15.00",
      "image":
      "https://cdn-icons-png.flaticon.com/512/906/906343.png",
    },
    {
      "title": "WordPress for Beginners Master",
      "rating": "5.0",
      "reviews": "(30 Reviews)",
      "price": "\$15.00",
      "image":
      "https://cdn-icons-png.flaticon.com/512/906/906343.png",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Top Bar
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {},
        ),
        title: const Text("My Wishlist"),
        actions: const [
          Icon(Icons.more_vert),
          SizedBox(width: 12),
        ],
      ),

      // Floating Button (bottom right)
      floatingActionButton: FloatingActionButton(
        shape: const CircleBorder(),
        backgroundColor: Colors.white,
        onPressed: () {},
        child: const Icon(Icons.menu, color: Colors.black),
      ),

      // Body
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Search bar
            Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Search",
                      prefixIcon: const Icon(Icons.search),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      filled: true,
                      fillColor: Colors.grey.shade100,
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Icon(Icons.tune, color: Colors.white),
                ),
              ],
            ),
            const SizedBox(height: 16),

            // Popular Course title
            const Text(
              "Popular Course",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),

            // Course List
            Expanded(
              child: ListView.builder(
                itemCount: courses.length,
                itemBuilder: (context, index) {
                  final course = courses[index];
                  return Card(
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: ListTile(
                      leading: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.network(
                          course["image"]!,
                          width: 60,
                          height: 60,
                          fit: BoxFit.cover,
                        ),
                      ),
                      title: Text(
                        course["title"]!,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              const Icon(Icons.star,
                                  color: Colors.orange, size: 14),
                              const SizedBox(width: 4),
                              Text(
                                "${course["rating"]} ${course["reviews"]}",
                                style: const TextStyle(fontSize: 12),
                              ),
                            ],
                          ),
                          const SizedBox(height: 4),
                          Text(
                            course["price"]!,
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 14),
                          ),
                        ],
                      ),
                      trailing: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.grey.shade200,
                        ),
                        child: const Icon(Icons.remove, color: Colors.black),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),

      // Bottom Navigation Bar
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.deepPurple,
        unselectedItemColor: Colors.grey,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
          // এখানে তুমি index অনুযায়ী page change করতে পারো
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.book), label: "My Course"),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "Wishlist"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Account"),
        ],
      ),
    );
  }
}
