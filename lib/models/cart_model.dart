import 'shoe.dart';

class Cart {
// list of shoes for sale

  List<Shoe> shoeshop = [
    Shoe(
        name: 'Adids1',
        price: '234',
        imagePath: 'assets/images/Adidas-Shoes-Free-PNG-Image.png',
        descrption: 'Nice design'),
    Shoe(
        name: 'Adids2',
        price: '456',
        imagePath:
            'assets/images/png-clipart-pair-of-multicolored-adidas-running-shoes-adidas-originals-skate-shoe-sneakers-adidas-adidas-shoes-mens-poster.png',
        descrption: 'We love shoes'),
    Shoe(
        name: 'Adids3',
        price: '435',
        imagePath:
            'assets/images/png-transparent-sneakers-water-shoe-adidas-running-adidas-shoes.png',
        descrption: 'What the nice shoe'),
    Shoe(
        name: 'Adids4',
        price: '989',
        imagePath: 'assets/images/shoespng.parspng.com-2.png',
        descrption: 'wooooow'),
    Shoe(
        name: 'Adids5',
        price: '887',
        imagePath:
            'assets/images/sticker-png-mens-adidas-ultra-boost-2-sneakers-sports-shoes-adidas-fashion-outdoor-shoe-sports-shoes-sneakers-adidas.png',
        descrption: 'Great shoe i love it'),
  ];

// list of items in user cart

  List<Shoe> userCart = [];

// get list of shoes for sale
  List<Shoe> getUserCart() {
    return userCart;
  } // get cart

// add items to cart

  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
  }

// remove item from cart

  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
  }
}
