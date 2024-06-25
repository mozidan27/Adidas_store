import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

// ignore: must_be_immutable
class MyButtomNavBar extends StatelessWidget {
  MyButtomNavBar({super.key, required this.onTabChange});
  void Function(int)? onTabChange;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: GNav(
          onTabChange: (value) => onTabChange!(value),
          mainAxisAlignment: MainAxisAlignment.center,
          tabBackgroundColor: Colors.grey.shade100,
          // backgroundColor: Colors.white,
          activeColor: Colors.grey[800],
          tabBorderRadius: 16,
          color: Colors.grey,
          tabs: const [
            GButton(
              icon: Icons.shop,
              text: '  Shop',
            ),
            GButton(
              icon: Icons.shopping_bag_rounded,
              text: '  Cart',
            ),
          ],
        ),
      ),
    );
  }
}
