import 'dart:math';

import 'package:babysitter/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:toggle_switch/toggle_switch.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({Key? key}) : super(key: key);

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  List<String> items = ['Min', 'item2', 'item3', 'item4'];
  List<String> items2 = ['Max', 'item2', 'item3', 'item4'];
  String? selectedItem = 'Min';
  String? selectedItem2 = 'Max';
  double _currentValue = 0;

  bool value = true;
  bool value1 = false;
  bool value2 = false;
  bool _showAdd = false;
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
              margin: EdgeInsets.only(left: 30, right: 20, top: 20),
              child: Row(
                children: <Widget>[
                  FloatingActionButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomeScreen()),
                      );
                    },
                    backgroundColor: Colors.teal,
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'Filter by',
                    style: TextStyle(
                      fontFamily: 'Rubik',
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 130,
                  ),
                  Card(
                    elevation: 3,
                    child: Padding(
                      padding: const EdgeInsets.all(2),
                      child: Icon(Icons.account_tree_sharp),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.only(left: 30, right: 30),
              child: Text(
                'Price',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Rubik',
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.only(left: 30, right: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Card(
                    elevation: 4,
                    child: DropdownButton<String>(
                      value: selectedItem,
                      items: items
                          .map((item) => DropdownMenuItem<String>(
                              value: item,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  item,
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontFamily: 'Rubik',
                                  ),
                                ),
                              )))
                          .toList(),
                      onChanged: (item) => setState(() => selectedItem = item),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Card(
                    elevation: 4,
                    child: DropdownButton<String>(
                      value: selectedItem2,
                      items: items2
                          .map((item) => DropdownMenuItem<String>(
                              value: item,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  item,
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontFamily: 'Rubik',
                                  ),
                                ),
                              )))
                          .toList(),
                      onChanged: (item) => setState(() => selectedItem2 = item),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.only(left: 30, right: 30),
              child: Text(
                'Distance',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Rubik',
                ),
              ),
            ),
            Container(
              padding:
                  EdgeInsets.only(left: 30, right: 30, top: 10, bottom: 20),
              child: Column(
                children: <Widget>[
                  Slider(
                    value: _currentValue,
                    min: 0,
                    max: 30,
                    divisions: 4,
                    onChanged: (value) {
                      setState(() {
                        _currentValue = value;
                      });
                    },
                    activeColor: Colors.orange.shade600,
                    inactiveColor: Colors.orange.shade200,
                  ),
                  Text(
                    '$_currentValue miles',
                    style: TextStyle(
                      fontFamily: 'Rubik',
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 30,
                right: 30,
              ),
              child: Card(
                elevation: 2,
                child: Container(
                  padding: EdgeInsets.only(
                    left: 30,
                    right: 30,
                    top: 20,
                    bottom: 20,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Online Now',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Rubik',
                        ),
                      ),
                      CupertinoSwitch(
                          trackColor: Colors.grey,
                          activeColor: Colors.blue,
                          value: value,
                          onChanged: (value) {
                            setState(() {
                              this.value = value;
                            });
                          })
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.only(
                left: 30,
                right: 30,
                bottom: 10,
              ),
              child: Text(
                'Sorting by',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Rubik',
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                left: 40,
                right: 50,
              ),
              child: ToggleSwitch(
                labels: ['Rating', 'Experience'],
                onToggle: (index) {},
                totalSwitches: 2,
                minWidth: 150,
                minHeight: 80,
                cornerRadius: 20,
                fontSize: 18,
                activeBgColors: [
                  [Colors.white],
                  [Colors.white]
                ],
                inactiveBgColor: Colors.grey.shade300,
                activeFgColor: Colors.black,
                inactiveFgColor: Colors.black,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.only(
                left: 30,
                right: 30,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Additions',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Rubik',
                    ),
                  ),
                  FlatButton(
                    onPressed: null,
                    child: Text('see all'),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.only(
                left: 30,
                right: 30,
              ),
              child: Column(
                children: <Widget>[
                  ListTile(
                    onTap: () {
                      setState(() {
                        this.value1 = !value1;
                      });
                    },
                    leading: Checkbox(
                      value: value1,
                      onChanged: (value1) {},
                    ),
                    title: Text('Without bad habits'),
                  ),
                  ListTile(
                    onTap: () {
                      setState(() {
                        this.value1 = !value1;
                      });
                    },
                    leading: Checkbox(
                      value: value1,
                      onChanged: (value1) {},
                    ),
                    title: Text('Knows how to give first aid'),
                  ),
                  ListTile(
                    onTap: () {
                      setState(() {
                        this.value2 = !value2;
                      });
                    },
                    leading: Checkbox(
                      value: value2,
                      onChanged: (value2) {},
                    ),
                    title: Text('Multitasking and stress resistant'),
                  ),
                  ListTile(
                    onTap: () {
                      setState(() {
                        this.value1 = !value1;
                      });
                    },
                    leading: Checkbox(
                      value: value1,
                      onChanged: (value1) {},
                    ),
                    title: Text('Has own baby monitor'),
                  ),
                  ListTile(
                    onTap: () {
                      setState(() {
                        this.value1 = !value1;
                      });
                    },
                    leading: Checkbox(
                      value: value1,
                      onChanged: (value1) {},
                    ),
                    title: Text('Super ability to swaddle in the air'),
                  ),
                  ListTile(
                    onTap: () {
                      setState(() {
                        this.value1 = !value1;
                      });
                    },
                    leading: Checkbox(
                      value: value1,
                      onChanged: (value1) {},
                    ),
                    title: Text('Can take out the trash'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
