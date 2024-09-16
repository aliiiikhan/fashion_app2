import 'package:flutter/material.dart';

class Containers1 extends StatelessWidget {
// Required asset image path

  // Constructor with required image parameter

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: 160,
      decoration: BoxDecoration(
        color: Colors.amber,
        borderRadius: BorderRadius.circular(23),
        image: DecorationImage(
          image:
              AssetImage('assets/images/1.jpg'), // Use the passed asset image
          fit: BoxFit.cover, // Adjust image to cover the container
        ),
      ),
    );
  }
}
