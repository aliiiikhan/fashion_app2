import 'package:fashion_design/screens/Homepage.dart';
import 'package:fashion_design/screens/myWishlist.dart';
import 'package:flutter/material.dart';

class AddToCartScreen extends StatefulWidget {
  const AddToCartScreen({super.key});

  @override
  State<AddToCartScreen> createState() => _AddToCartScreenState();
}

class _AddToCartScreenState extends State<AddToCartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('data'),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: Icon(Icons.home),
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const Homepage()),
                );
              },
            ),
            IconButton(
              icon: Icon(Icons.card_travel),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Mywishlist()),
                );
              },
            ),
            IconButton(
              icon: Icon(Icons.favorite),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.shopping_bag),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AddToCartScreen()),
                );
              },
            ),
            IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          const Homepage()), // Replace with actual screen
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
