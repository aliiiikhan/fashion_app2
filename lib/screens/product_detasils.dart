import 'package:fashion_design/screens/Homepage.dart';
import 'package:fashion_design/screens/add_to_cart_screen.dart';
import 'package:fashion_design/screens/myWishlist.dart';
import 'package:flutter/material.dart';

class ProductDetasils extends StatefulWidget {
  const ProductDetasils({super.key});

  @override
  State<ProductDetasils> createState() => _ProductDetasilsState();
}

class _ProductDetasilsState extends State<ProductDetasils> {
  final List<Map<String, String>> products = [
    {
      'image': 'assets/images/h2.jpg',
      'name': 'Summer Dress',
      'details':
          'A light and flowy summer dress perfect for warm weather. Made from breathable cotton fabric.'
    },
    {
      'image': 'assets/images/h1.jpg',
      'name': 'Classic Jacket',
      'details':
          'A stylish brown leather jacket, perfect for both casual and formal wear. 100% genuine leather.'
    },
    {
      'image': 'assets/images/h4.jpeg',
      'name': 'Elegant Coat',
      'details':
          'A long, elegant coat designed for a sleek winter look. Made from high-quality wool.'
    },
    {
      'image': 'assets/images/tshirt.png',
      'name': 'T-Shirt',
      'details':
          'A casual t-shirt with a comfortable fit, made from soft, high-quality cotton. Available in various colors.'
    },
    {
      'image': 'assets/images/black.png',
      'name': 'Black Jeans',
      'details':
          'Slim-fit black jeans with a modern cut. Made from durable denim, ideal for everyday wear.'
    },
    {
      'image': 'assets/images/woman-clothes.png',
      'name': 'Women\'s Outfit',
      'details':
          'A chic and trendy women\'s outfit perfect for any occasion. Available in a variety of sizes.'
    },
    {
      'image': 'assets/images/jacket.png',
      'name': 'Winter Jacket',
      'details':
          'A warm winter jacket with a hood, insulated with premium material for cold weather. Available in multiple sizes.'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Details'),
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          return Card(
            margin: EdgeInsets.all(10),
            child: Column(
              children: [
                Image.asset(
                  product['image']!,
                  fit: BoxFit.cover,
                  height: 200,
                  width: double.infinity,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    product['name']!,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    product['details']!,
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(
                    'Price: \$50.00', // Example price, customize as needed
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                  ),
                ),
                SizedBox(height: 10),
              ],
            ),
          );
        },
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
                // Handle navigation to wishlist or another desired screen
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          Mywishlist()), // Replace with actual screen
                );
              },
            ),
            IconButton(
              icon: Icon(Icons.favorite),
              onPressed: () {
                // Handle navigation to favorites or another desired screen
              },
            ),
            IconButton(
              icon: Icon(Icons.shopping_bag),
              onPressed: () {
                // Handle navigation to messages or another desired screen
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          AddToCartScreen()), // Replace with actual screen
                );
              },
            ),
            IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                // Handle navigation to menu or another desired screen
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
