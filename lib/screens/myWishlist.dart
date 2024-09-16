import 'package:fashion_design/screens/homepage.dart'; // Import Homepage screen
import 'package:fashion_design/screens/product_detasils.dart';
import 'package:flutter/material.dart';

class Mywishlist extends StatefulWidget {
  const Mywishlist({super.key});

  @override
  State<Mywishlist> createState() => _MywishlistState();
}

class _MywishlistState extends State<Mywishlist> {
  // Data for wishlist items (extracted from Homepage screen)
  List<Map<String, String>> wishlistItems = [
    {
      "image": 'assets/images/h2.jpg',
      "name": "Fashion Item 1",
      "description": "Stylish and trending item."
    },
    {
      "image": 'assets/images/h1.jpg',
      "name": "Fashion Item 2",
      "description": "Elegant design for daily wear."
    },
    {
      "image": 'assets/images/h4.jpeg',
      "name": "Fashion Item 3",
      "description": "A modern item for your collection."
    },
    {
      "image": 'assets/images/tshirt.png',
      "name": "T-Shirt",
      "description": "Casual and comfortable T-shirt."
    },
    {
      "image": 'assets/images/black.png',
      "name": "Black Pants",
      "description": "Stylish black pants for any occasion."
    },
    {
      "image": 'assets/images/woman-clothes.png',
      "name": "Women's Dress",
      "description": "Elegant women's dress for formal events."
    },
    {
      "image": 'assets/images/jacket.png',
      "name": "Jacket",
      "description": "Warm and fashionable jacket."
    },
  ];

  // Method to remove an item from the wishlist
  void removeFromWishlist(int index) {
    setState(() {
      wishlistItems.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Wishlist'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Go back to the previous screen
          },
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: wishlistItems.isEmpty
                ? Center(
                    child: Text(
                      'Your Wishlist is empty!',
                      style: TextStyle(fontSize: 20),
                    ),
                  )
                : ListView.builder(
                    itemCount: wishlistItems.length,
                    itemBuilder: (context, index) {
                      final item = wishlistItems[index];
                      return Card(
                        margin: EdgeInsets.all(8.0),
                        child: ListTile(
                          leading: Image.asset(
                            item["image"]!,
                            width: 50,
                            height: 50,
                            fit: BoxFit.cover,
                          ),
                          title: Text(item["name"]!),
                          subtitle: Text(item["description"]!),
                          trailing: IconButton(
                            icon: Icon(Icons.delete, color: Colors.red),
                            onPressed: () {
                              removeFromWishlist(
                                  index); // Remove item from wishlist
                            },
                          ),
                        ),
                      );
                    },
                  ),
          ),
          // Add the row of CircleAvatar icons here at the bottom of the screen
          Container(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => const Homepage()),
                    );
                  },
                  child: CircleAvatar(
                    child: Icon(
                      Icons.home,
                      color: Colors.white,
                    ),
                    radius: 30,
                    backgroundColor: Colors.white24,
                  ),
                ),
                SizedBox(width: 10),
                CircleAvatar(
                  child: Icon(
                    Icons.card_travel,
                    color: Colors.white,
                  ),
                  radius: 30,
                  backgroundColor: Colors.white24,
                ),
                SizedBox(width: 10),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProductDetasils(),
                      ),
                    );
                  },
                  child: CircleAvatar(
                    child: Icon(
                      Icons.favorite,
                      color: Colors.white,
                    ),
                    radius: 30,
                    backgroundColor: Colors.white24,
                  ),
                ),
                SizedBox(width: 10),
                CircleAvatar(
                  child: Icon(
                    Icons.shopping_bag,
                    color: Colors.white,
                  ),
                  radius: 30,
                  backgroundColor: Colors.white24,
                ),
                SizedBox(width: 10),
                CircleAvatar(
                  child: Icon(
                    Icons.menu,
                    color: Colors.white,
                  ),
                  radius: 30,
                  backgroundColor: Colors.white24,
                ),
              ],
            ),
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(45),
            ),
            height: 75,
            width: 340,
          ),
        ],
      ),
    );
  }
}
