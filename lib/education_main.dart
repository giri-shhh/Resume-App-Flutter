import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Education extends StatelessWidget {
  final Map<int, dynamic> education = {1: engineering, 2: college, 3: school};

  static List<String> engineering = [
    'Adichunchanagiri Institute of Technology',
    'Bachelor of Engineering',
    'Computer Science',
    'Year : 2013-2017',
    'Net Perc. : 70.63 %',
    ' A.I.T Circle, Chikkamagaluru.'
  ];
  static List<String> college = [
    'DVS Independent College',
    'Pre University',
    'Biology',
    'Year : 2011-2013',
    'Net Perc. : 62.32 %',
    ' Gopi Circle, Shivamogga.'
  ];
  static List<String> school = [
    'Govt High School',
    'Secondary State Leaving',
    'Year : 2007-2010',
    'Net Perc. : 90.40 %',
    '',
    ' Abbalagere, Shivamogga.',
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
        child: SingleChildScrollView(
            child: Column(
      children: <Widget>[
        SizedBox(
          height: 20,
        ),
        _buildProfileHeaderWidget(education[1]),
        _buildProfileHeaderWidget(education[2]),
        _buildProfileHeaderWidget(education[3]),
      ],
    )));
  }

  _buildProfileHeaderWidget(List<String> details) {
    return Container(
      decoration: new BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 8.0, // has the effect of softening the shadow
              spreadRadius: 2.0, // has the effect of extending the shadow
              offset: Offset(
                2.0, // horizontal, move right 10
                2.0, // vertical, move down 10
              ),
            )
          ],
          gradient: new LinearGradient(
              colors: <Color>[Colors.deepOrange[400], Colors.deepOrange[300]]),
          borderRadius: new BorderRadius.all(Radius.circular(10))),
      height: 250,
      margin: EdgeInsets.only(left: 20, right: 20, top: 15, bottom: 10),
      child: Column(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Container(
                      padding: EdgeInsets.only(top: 15, left: 15),
                      child: Icon(Icons.business, color: Colors.white)),
                  Container(
                    padding: EdgeInsets.only(top: 15, left: 15),
                    child: Text(
                      details[0],
                      style: TextStyle(color: Colors.white, fontSize: 22),
                    ),
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.only(right: 30, top: 10),
                child: Text(
                  details[1],
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
              Container(
                padding: EdgeInsets.only(right: 30, top: 20),
                child: Text(
                  details[2],
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
              Container(
                padding: EdgeInsets.only(right: 30, top: 20),
                child: Text(
                  details[3],
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
              Container(
                padding: EdgeInsets.only(right: 30, top: 20),
                child: Text(
                  details[4],
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ],
          ),
          Divider(
            color: Colors.orange[200],
          ),
          Container(
            padding: EdgeInsets.only(top: 5, left: 15),
            child: Row(
              children: <Widget>[
                Icon(
                  Icons.place,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  details[5],
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
