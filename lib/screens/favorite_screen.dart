import 'package:flutter/material.dart';

class FavoriteItemsScreen extends StatelessWidget {
  final List<String> favoriteItems;

  FavoriteItemsScreen({required this.favoriteItems});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favorite Items'),
      ),
      body: favoriteItems.isEmpty
          ? Center(
              child: Text('No favorites yet!'),
            )
          : GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.75,
              ),
              itemCount: favoriteItems.length,
              itemBuilder: (context, index) {
                String item = favoriteItems[index];
                return GridTile(
                  child: Image.asset(item, fit: BoxFit.cover),
                );
              },
            ),
    );
  }
}
