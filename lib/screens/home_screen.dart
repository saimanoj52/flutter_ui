import 'package:babysitter/screens/filter_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(
          top: 8,
        ),
        child: ListView(
          physics: ClampingScrollPhysics(),
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(left: 30, right: 30, top: 16),
              child: Row(
                children: <Widget>[
                  Image.asset('assets/images/profile1.png'),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'Hello, Jenny!',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      fontFamily: 'Rubik',
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(left: 30, right: 30),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        hintText: 'Search',
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  IconButton(
                    icon: Image.asset(
                      'assets/images/gear.png',
                      width: 35,
                      height: 35,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const FilterScreen()),
                      );
                    },
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 200,
              padding: EdgeInsets.only(
                left: 20,
                right: 20,
              ),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  InkWell(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(25),
                      child: Image.asset('assets/images/1.jpg'),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  InkWell(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(25),
                      child: Image.asset('assets/images/2.jpg'),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  InkWell(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(25),
                      child: Image.asset('assets/images/3.jpg'),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  InkWell(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(25),
                      child: Image.asset('assets/images/4.jpg'),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                'Top babysitters',
                style: TextStyle(
                  fontFamily: 'Rubik',
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 230,
              padding: EdgeInsets.only(
                left: 20,
                right: 20,
              ),
              child: ListView(
                scrollDirection: Axis.vertical,
                children: <Widget>[
                  InkWell(
                    child: Card(
                      elevation: 10,
                      child: Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.only(
                                left: 10,
                              ),
                              child: CircleAvatar(
                                radius: 40,
                                backgroundImage:
                                    AssetImage('assets/images/p1.png'),
                              ),
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    'Anney White',
                                    style: TextStyle(
                                      fontFamily: 'Rubik',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17,
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                  Text(
                                    'Experience: 5 years',
                                    textAlign: TextAlign.left,
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Icon(
                                        Icons.star,
                                        color: Colors.yellow.shade700,
                                      ),
                                      Text(
                                        '5.0',
                                        textAlign: TextAlign.left,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 50,
                            ),
                            Icon(
                              Icons.arrow_forward,
                              color: Colors.teal,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    child: Card(
                      elevation: 10,
                      child: Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.only(
                                left: 10,
                              ),
                              child: CircleAvatar(
                                radius: 40,
                                backgroundImage:
                                    AssetImage('assets/images/p3.png'),
                              ),
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    'Jane Grant',
                                    style: TextStyle(
                                      fontFamily: 'Rubik',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17,
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                  Text(
                                    'Experience: 10 years',
                                    textAlign: TextAlign.left,
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Icon(
                                        Icons.star,
                                        color: Colors.yellow.shade700,
                                      ),
                                      Text(
                                        '4.7',
                                        textAlign: TextAlign.left,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 50,
                            ),
                            Icon(
                              Icons.arrow_forward,
                              color: Colors.teal,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    child: Card(
                      elevation: 10,
                      child: Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.only(
                                left: 10,
                              ),
                              child: CircleAvatar(
                                radius: 40,
                                backgroundImage:
                                    AssetImage('assets/images/p4.png'),
                              ),
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    'Mary Kent',
                                    style: TextStyle(
                                      fontFamily: 'Rubik',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17,
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                  Text(
                                    'Experience: 7 years',
                                    textAlign: TextAlign.left,
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Icon(
                                        Icons.star,
                                        color: Colors.yellow.shade700,
                                      ),
                                      Text(
                                        '4.8',
                                        textAlign: TextAlign.left,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 50,
                            ),
                            Icon(
                              Icons.arrow_forward,
                              color: Colors.teal,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    child: Card(
                      elevation: 10,
                      child: Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.only(
                                left: 10,
                              ),
                              child: CircleAvatar(
                                radius: 40,
                                backgroundImage:
                                    AssetImage('assets/images/p2.jpg'),
                              ),
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    'Marina Oakley',
                                    style: TextStyle(
                                      fontFamily: 'Rubik',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17,
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                  Text(
                                    'Experience: 5 years',
                                    textAlign: TextAlign.left,
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Icon(
                                        Icons.star,
                                        color: Colors.yellow.shade700,
                                      ),
                                      Text(
                                        '5.0',
                                        textAlign: TextAlign.left,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 50,
                            ),
                            Icon(
                              Icons.arrow_forward,
                              color: Colors.teal,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
        elevation: 4,
        backgroundColor: Colors.teal,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(20),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Icon(
              Icons.home_filled,
              color: Colors.black,
            ),
            Icon(
              Icons.messenger_outline,
              color: Colors.grey,
            ),
            Icon(
              Icons.favorite_border,
              color: Colors.grey,
            ),
            Icon(
              Icons.person_outline,
              color: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}
