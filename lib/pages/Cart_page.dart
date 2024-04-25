import 'package:adidas/models/cart_model.dart';
import 'package:adidas/models/shoe.dart';
import 'package:adidas/widgets/Cart_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'My Cart',
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: value.getUserCart().isEmpty
                  ? Center(
                      child: Text(
                        "Let's buy something",
                        style: TextStyle(
                            color: Colors.grey[500],
                            fontSize: 28,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  : ListView.builder(
                      itemCount: value.getUserCart().length,
                      itemBuilder: (context, index) {
                        //get individual shoe
                        Shoe individualShoe = value.getUserCart()[index];
                        return CartItem(
                          shoe: individualShoe,
                        );
                        // return the  cart item
                      },
                    ),
            )
          ],
        ),
      ),
    );
  }
}
