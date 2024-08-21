import 'package:flutter/material.dart';
import 'cart_item.dart';
import 'cart_item_widget.dart';

class ShoppingCartPage extends StatelessWidget {
  final List<CartItem> items = [
    CartItem(
        name: 'Bell Pepper Red',
        quantity: 1,
        price: 4.99,
        imagePath: 'assets/images/nanica.png',
        description: '1kg, Price'),
    CartItem(
        name: 'Egg Chicken Red',
        quantity: 1,
        price: 1.99,
        imagePath: 'assets/images/nanica.png',
        description: '4pcs, Price'),
    CartItem(
        name: 'Organic Bananas',
        quantity: 1,
        price: 3.00,
        imagePath: 'assets/images/nanica.png',
        description: '12kg, Price'),
    CartItem(
        name: 'Ginger',
        quantity: 1,
        price: 2.99,
        imagePath: 'assets/images/nanica.png',
        description: '250gm, Price'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'My Cart',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return CartItemWidget(item: items[index]);
        },
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.green,
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          onPressed: () {},
          child: const Padding(
            padding: EdgeInsets.all(6.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Go to Checkout',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
                Text(
                  '\$12.96',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
