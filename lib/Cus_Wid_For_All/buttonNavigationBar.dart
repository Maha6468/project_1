import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;
  final List<Map<String, dynamic>> items;

  const CustomBottomNavigationBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      elevation: 6,
      child: SizedBox(
        height: 60, // fixed height
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(items.length, (index) {
            bool isActive = index == currentIndex;
            return Expanded(
              child: InkWell(
                onTap: () => onTap(index),
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        items[index]['icon'],
                        color:
                        isActive ? Colors.deepPurpleAccent : Colors.grey,
                        size: 24,
                      ),
                      SizedBox(height: 2), // spacing control
                      Text(
                        items[index]['label'],
                        style: TextStyle(
                          fontSize: 10, // make it small enough to fit
                          color: isActive
                              ? Colors.deepPurpleAccent
                              : Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
