import 'package:adidas/models/cart_model.dart';
import 'package:adidas/models/shoe.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

// ignore: must_be_immutable
class CartItem extends StatefulWidget {
  Shoe shoe;
  CartItem({super.key, required this.shoe});

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  void removeItem() {
    Provider.of<Cart>(context, listen: false).removeItemFromCart(widget.shoe);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 19),
      decoration: BoxDecoration(
          color: Colors.grey[100], borderRadius: BorderRadius.circular(8)),
      child: ListTile(
        leading: Image.asset(widget.shoe.imagePath),
        title: Text(widget.shoe.name),
        subtitle: Text('EGP ${widget.shoe.price}'),
        trailing:
            IconButton(onPressed: removeItem, icon: const Icon(Icons.delete)),
      ),
    );
  }
}
