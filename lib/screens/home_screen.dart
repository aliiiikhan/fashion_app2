import 'dart:async';
import 'package:flutter/material.dart';
import 'package:fashion_design/screens/welcome_scree.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    // Navigate to WelcomeScreen after 3 seconds
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => WelcomeScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(width: 20),
              CircleAvatar(
                radius: 30,
                backgroundColor: Colors.brown,
                child: Center(
                  child: Text(
                    'F',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                    ),
                  ),
                ),
              ),
              SizedBox(width: 5),
              Text(
                'Fashion',
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
              CircleAvatar(
                radius: 3,
                backgroundColor: Colors.brown,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
