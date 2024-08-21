import 'package:flutter/material.dart';
import 'cart_item.dart';

class CartItemWidget extends StatelessWidget {
  final CartItem item;

  const CartItemWidget({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Image.asset(
              item.imagePath,
              width: 60,
              height: 60,
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item.name,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    item.description,
                    style: TextStyle(color: Colors.grey),
                  ),
                  Row(
                    children: [
                      IconButton(
                        icon: Icon(Icons.remove_circle_outline),
                        onPressed: () {},
                      ),
                      Text('${item.quantity}'),
                      IconButton(
                        icon: Icon(Icons.add_circle_outline),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Text(
              '\$${item.price.toStringAsFixed(2)}',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            IconButton(
              icon: Icon(Icons.close),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
