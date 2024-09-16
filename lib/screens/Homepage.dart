import 'package:fashion_design/screens/myWishlist.dart';
import 'package:fashion_design/screens/product_detasils.dart';
import 'package:fashion_design/widgets/containers.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  Color circleColor =
      Colors.white24; // Initial background color for the CircleAvatar

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text('HomePage'),
                Spacer(),
                IconButton(
                  icon: Icon(Icons.arrow_forward_rounded),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Mywishlist()),
                    ); // Navigate to wishlist screen
                  },
                )
              ],
            ),
          ],
        ),
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
              Row(
                children: [
                  SizedBox(width: 20),
                  Text('Location'),
                ],
              ),
              Row(
                children: [
                  Icon(Icons.location_pin, color: Colors.brown),
                  Text(
                    'New York City, USA',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Icon(Icons.arrow_drop_down),
                  Spacer(),
                  Icon(Icons.notifications)
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Container(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Search",
                        prefixIcon: Icon(Icons.search),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                    ),
                    height: 40,
                    width: 310,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                  Spacer(),
                  Icon(Icons.menu, size: 30),
                ],
              ),
              SizedBox(height: 5),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/h2.jpg'),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.amber,
                      ),
                      height: 150,
                      width: 340,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/h1.jpg'),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.amber,
                      ),
                      height: 150,
                      width: 340,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/h4.jpeg'),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      height: 150,
                      width: 340,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                      ),
                    ),
                    SizedBox(width: 10),
                  ],
                ),
              ),
              SizedBox(height: 5),
              Row(
                children: [
                  Text(
                    'Category',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  Spacer(),
                  Text(
                    'See All',
                    style: TextStyle(
                      color: Colors.brown,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/images/tshirt.png'),
                    radius: 40,
                  ),
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/images/black.png'),
                    radius: 40,
                  ),
                  CircleAvatar(
                    backgroundImage:
                        AssetImage('assets/images/woman-clothes.png'),
                    radius: 40,
                  ),
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/images/jacket.png'),
                    radius: 40,
                  ),
                ],
              ),
              SizedBox(height: 3),
              Row(
                children: [
                  SizedBox(width: 20),
                  Text(
                    'T-Shirt',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                    ),
                  ),
                  SizedBox(width: 45),
                  Text(
                    'Paint',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 19,
                    ),
                  ),
                  SizedBox(width: 45),
                  Text(
                    'Dress',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 19,
                    ),
                  ),
                  SizedBox(width: 45),
                  Text(
                    'Jacket',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 19,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 5),
              Row(
                children: [
                  Text(
                    'Flash Sale',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  Spacer(),
                  Text(
                    'Closing In ',
                    style: TextStyle(
                      color: Colors.black45,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    '02 :',
                    style: TextStyle(
                      color: Colors.brown,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    '12 :',
                    style: TextStyle(
                      color: Colors.brown,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    '56',
                    style: TextStyle(
                      color: Colors.brown,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 5),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Containers1(),
                      SizedBox(width: 10),
                      Containers1(),
                    ],
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      SizedBox(width: 16),
                      Text(
                        'Brown Jacket',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                        ),
                      ),
                      SizedBox(width: 5),
                      Icon(
                        Icons.star,
                        color: Colors.yellow.shade900,
                      ),
                      Text(
                        '4.9',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                        ),
                      ),
                      SizedBox(width: 30),
                      Text(
                        'Couple Jacket',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                        ),
                      ),
                      SizedBox(width: 5),
                      Icon(
                        Icons.star,
                        color: Colors.yellow.shade900,
                      ),
                      Text(
                        '4.9',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            CircleAvatar(
                              child: Icon(
                                Icons.home,
                                color: Colors.white,
                              ),
                              radius: 30,
                              backgroundColor: Colors.white24,
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  circleColor =
                                      Colors.white24; // Change the color on tap
                                });

                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Mywishlist()),
                                );
                              },
                              child: CircleAvatar(
                                child: Icon(
                                  Icons.card_travel,
                                  color: Colors.white,
                                ),
                                radius: 30,
                                backgroundColor:
                                    circleColor, // Dynamic background color
                              ),
                            ),
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
                            CircleAvatar(
                              child: Icon(
                                Icons.shopping_bag,
                                color: Colors.white,
                              ),
                              radius: 30,
                              backgroundColor: Colors.white24,
                            ),
                            CircleAvatar(
                              child: Icon(
                                Icons.account_balance,
                                color: Colors.white,
                              ),
                              radius: 30,
                              backgroundColor: Colors.white24,
                            ),
                          ],
                        ),
                        height: 75,
                        width: 340,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(45),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
