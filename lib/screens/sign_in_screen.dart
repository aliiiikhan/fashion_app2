import 'package:fashion_design/screens/Homepage.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign In Screen'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Go back to the previous screen
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  Container(
                    height: 40,
                    width: 340,
                    child: Center(
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'Sign In',
                                    style: TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Hi! Welcome Back, you Have been Missed',
                    style: TextStyle(),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  children: [
                    Text(
                      'Email',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Container(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "example@gmail.com",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                    ),
                    height: 50,
                    width: 340,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(75),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Row(
                  children: [
                    Text(
                      'Password',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Container(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "**************",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                    ),
                    height: 50,
                    width: 340,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(75),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Forgot Password?',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.brown,
                          decoration: TextDecoration.underline),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
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
                          MaterialPageRoute(
                            builder: (context) => Homepage(),
                          ),
                        );
                      },
                      child: Text(
                        'Sign In',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('------------------Or Sign In With-------------------'),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 100,
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/google.jpeg'),
                            fit: BoxFit.cover,
                          ),
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(75),
                        ),
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/apple.jpeg'),
                            fit: BoxFit.cover,
                          ),
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(75),
                        ),
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/facebook.png'),
                            fit: BoxFit.cover,
                          ),
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(75),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Dont Have an account?',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    'Sign Up',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.brown,
                        decoration: TextDecoration.underline),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
