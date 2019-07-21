import 'package:flutter/material.dart';
import 'package:resume_girisha/career_main.dart';
import 'package:resume_girisha/education_main.dart';
import 'package:resume_girisha/profile_widget.dart';

import 'awards_main.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: MyStatefulWidget(),
      darkTheme: ThemeData(fontFamily: 'Roboto'),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static List<Widget> _widgetOptions = <Widget>[
    Awards(),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    CareerMain(),
    Education(),
    ProfileWidget(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  BottomNavigationBarItem _buildNavigationBarItem(icon, name) {
    return BottomNavigationBarItem(
      icon: Icon(icon),
      title: Text(name),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          _buildNavigationBarItem(Icons.verified_user, 'Awards'),
          _buildNavigationBarItem(Icons.android, 'Projects'),
          _buildNavigationBarItem(Icons.person, 'Career & Exp'),
          _buildNavigationBarItem(Icons.business, 'Education'),
          _buildNavigationBarItem(Icons.account_box, 'Profile'),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
