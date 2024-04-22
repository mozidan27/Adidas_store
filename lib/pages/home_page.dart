import 'package:adidas/pages/Cart_page.dart';
import 'package:adidas/pages/Shop_page.dart';
import 'package:adidas/widgets/gnav_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // this is the selected index to select the index of navbar

  int _selectedindex = 0;
// this method to navitate the  pages
  void navigateBottomBar(int indext) {
    setState(() {
      _selectedindex = indext;
    });
  }
// these are the pages we will navigate to

  final List<Widget> _pages = [
    // shop page
    const ShopPage(),

    // cart page
    const CartPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: MyButtomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      body: _pages[_selectedindex],
    );
  }
}
