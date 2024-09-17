import 'package:fashion_design/screens/favorite_screen.dart';
import 'package:flutter/material.dart';

class ItemsGridScreen extends StatefulWidget {
  @override
  _ItemsGridScreenState createState() => _ItemsGridScreenState();
}

class _ItemsGridScreenState extends State<ItemsGridScreen> {
  // List of images
  List<String> items = [
    'assets/images/s1.jpg',
    'assets/images/s2.jpg',
    'assets/images/s3.jpg',
    'assets/images/tshirt.png',
    'assets/images/s4.jpg',
    'assets/images/woman-clothes.png',
    'assets/images/jacket.png',
  ];

  // List to store the selected favorite items
  List<String> favoriteItems = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Items Grid'),
        actions: [
          IconButton(
            icon: Icon(Icons.favorite),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      FavoriteItemsScreen(favoriteItems: favoriteItems),
                ),
              );
            },
          ),
        ],
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // 2 items per row
          childAspectRatio: 0.75, // Adjust the aspect ratio for images
        ),
        itemCount: items.length,
        itemBuilder: (context, index) {
          String item = items[index];
          bool isFavorited = favoriteItems.contains(item);

          return GridTile(
            child: Stack(
              fit: StackFit.expand,
              children: [
                Image.asset(item, fit: BoxFit.cover),
                Positioned(
                  top: 10,
                  right: 10,
                  child: IconButton(
                    icon: Icon(
                      isFavorited ? Icons.favorite : Icons.favorite_border,
                      color: isFavorited ? Colors.red : Colors.white,
                    ),
                    onPressed: () {
                      setState(() {
                        if (isFavorited) {
                          favoriteItems.remove(item);
                        } else {
                          favoriteItems.add(item);
                        }
                      });
                    },
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
