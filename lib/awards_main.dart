import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Awards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: new BoxDecoration(
          borderRadius: new BorderRadius.all(Radius.circular(10))),
      height: 820,
      width: 500,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.only(top: 10, left: 10),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              child: Text(
                'Certificates ',
                style: TextStyle(
                    color: Colors.deepOrange,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              padding: EdgeInsets.only(top: 10, bottom: 10, left: 5),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: <Widget>[
                  _buildCardWidet('assets/oracle.png', 'OCA SE 7', '2017',
                      Colors.deepOrange[100]),
                  SizedBox(
                    width: 10,
                  ),
                  _buildCardWidet('assets/androidN.png', 'Android N', '2018',
                      Colors.deepPurple[100]),
                  SizedBox(
                    width: 10,
                  ),
                  _buildCardWidet('assets/flutter.png', 'Flutter', '2019',
                      Colors.cyan[100]),
                ],
              ),
            ),
            Container(
              child: Text(
                'Awards ',
                style: TextStyle(
                    color: Colors.deepOrange,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              padding: EdgeInsets.only(top: 15, bottom: 15, left: 5),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: <Widget>[
                  _buildCardWidet('assets/counterStrike.png', 'Counter Strike',
                      '1st Place', Colors.pink[50]),
                  SizedBox(
                    width: 10,
                  ),
                  _buildCardWidet('assets/shortMovie.png', 'Short Movie',
                      '2nd Place', Colors.teal[50]),
                  SizedBox(
                    width: 10,
                  ),
                  _buildCardWidet('assets/star.png', 'Star Of Month', '2019',
                      Colors.green[50]),
                  SizedBox(
                    width: 10,
                  ),
                  _buildCardWidet('assets/capgemini.ico', 'Training #1', '2018',
                      Colors.indigo[50]),
                ],
              ),
            ),
            Container(
              child: Text(
                'Co-Curricular Activities ',
                style: TextStyle(
                    color: Colors.deepOrange,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              padding: EdgeInsets.only(top: 20, bottom: 15, left: 5),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: <Widget>[
                  _buildCardWidet('assets/counterStrike.png', 'Counter Strike',
                      '1st Place', Colors.red[50]),
                  SizedBox(
                    width: 10,
                  ),
                  _buildCardWidet('assets/shortMovie.png', 'Short Movie',
                      '2nd Place', Colors.lime[50]),
                  SizedBox(
                    width: 10,
                  ),
                  _buildCardWidet('assets/star.png', 'Star Of Month', '2019',
                      Colors.lightBlue[50]),
                  SizedBox(
                    width: 10,
                  ),
                  _buildCardWidet('assets/capgemini.ico', 'Training #1', '2018',
                      Colors.orange[50]),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  _buildCardWidet(image, title, year, color) {
    return Container(
      height: 190,
      width: 120,
      margin: EdgeInsets.only(top: 5, bottom: 5, right: 7),
      padding: EdgeInsets.all(10),
      decoration: new BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10.0),
        image: DecorationImage(
            alignment: Alignment(0, -0.75),
            image: AssetImage(image),
            fit: BoxFit.contain),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Container(
            child: Text(
              title,
              style:
                  TextStyle(color: Colors.deepPurpleAccent[800], fontSize: 18),
            ),
          ),
          Container(
            child: Text(
              year,
              style: TextStyle(color: Colors.blueGrey[600], fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}
