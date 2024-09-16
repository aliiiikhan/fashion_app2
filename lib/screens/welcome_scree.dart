import 'package:fashion_design/screens/sign_in_screen.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Welcome Screen')),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 300,
              width: 340,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(width: 5),
                  Container(
                    height: 300,
                    width: 150,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/fashion2.jpeg'),
                        fit: BoxFit.cover,
                      ),
                      // color: Colors.amber,
                      borderRadius: BorderRadius.circular(75),
                    ),
                  ),
                  SizedBox(width: 20),
                  Column(
                    children: [
                      Container(
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/f5.jpeg'),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(65),
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        height: 140,
                        width: 150,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/f6.jpeg'),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(75),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'The ',
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Fashion App ',
                  style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.brown),
                ),
                Text(
                  'That',
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Makes You Look Your Best',
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Loreum ipsum dolor sit amet,consectetur',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  'adipiscing elit,sed do eiusmod tempor incididunt',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ],
            ),
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 60,
                  width: 300,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all<Color>(
                          Colors.brown), // Set the color to brown
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignInScreen()),
                      );
                    },
                    child: Text(
                      'Lets Get Started',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 45),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Already Have an Account?  ',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                Text(
                  'Sign In?',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.brown,
                      decoration: TextDecoration.underline),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
