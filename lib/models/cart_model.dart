import 'package:flutter/material.dart';
import 'shoe.dart';

class Cart extends ChangeNotifier {
// list of shoes for sale

  List<Shoe> shoeshop = [
    Shoe(
        name: 'adidas Men',
        price: '234',
        imagePath: 'assets/images/Adidas-Shoes-Free-PNG-Image.png',
        descrption: 'adidas Men GRAND COURT BASE 2.0'),
    Shoe(
        name: "adidas Men",
        price: '456',
        imagePath: 'assets/images/adidas-shoes-png-26553 (1).png',
        descrption: 'adidas Men VS PACE 2.0 Sneaker'),
    Shoe(
        name: 'adidas womens',
        price: '435',
        imagePath: 'assets/images/adidas-shoes-png-26556.png',
        descrption: 'adidas womens COURT PLATFORM Sneaker'),
    Shoe(
        name: 'adidas Men',
        price: '989',
        imagePath: 'assets/images/adidas-shoes-png-26569.png',
        descrption: 'adidas Men GRAND COURT BASE 2.0'),
    Shoe(
        name: 'adidas womens',
        price: '887',
        imagePath: 'assets/images/Adidas-Shoes-PNG-Picture.png',
        descrption: 'adidas womens BREAKNET 2.0 Sneaker'),
    Shoe(
        name: 'adidas womens',
        price: '887',
        imagePath: 'assets/images/shoespng.parspng.com-2.png',
        descrption: 'adidas womens GALAXY 6 W Shoes'),
  ];

// list of items in user cart

  List<Shoe> userCart = [];

// get list of shoes for sale
  List<Shoe> getShoeList() {
    return shoeshop;
  } // get cart

  List<Shoe> getUserCart() {
    return userCart;
  }
// add items to cart

  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

// remove item from cart

  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
