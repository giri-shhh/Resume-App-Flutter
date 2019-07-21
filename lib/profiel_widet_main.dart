import 'package:flutter/material.dart';

class ProfileMainWidget extends StatelessWidget {
  final List<String> images = [
    'assets/android.png',
    'assets/webdevelop.png',
    'assets/videoedit.png',
    'assets/game.png',
    'assets/music.png',
    'assets/paint.png'
  ];

  final List<String> headers = [
    'Android',
    'Web Develop',
    'Video Edit',
    'Gaming',
    'Music',
    'Paint'
  ];

  final List<String> skils = [
    'Java Enterprise',
    'Spring MVC',
    'Spring Batch',
    'Hibernate',
    'HTML',
    'CSS',
    'Javascript',
    'C / C++',
    'Flutter',
    'Dart',
    'SQL / PLSQL',
    'XML',
    'Android'
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.blue[50],
        child: SingleChildScrollView(
            child: Column(
          children: <Widget>[
            SizedBox(
              height: 50,
            ),
            _buildProfileHeaderWidget(),
            _buildSkillSetIndicatorWidget(),
            _buildHobbiesListWdget(),
            _buildSkillsListWdget(),
          ],
        )));
  }

  _buildHobbiesListWdget() {
    return Container(
        height: 250,
        decoration: new BoxDecoration(
            gradient: new LinearGradient(colors: <Color>[
              Colors.deepOrange[400],
              Colors.deepOrange[300],
              Colors.deepOrange[200]
            ]),
            borderRadius: new BorderRadius.all(Radius.circular(10))),
        margin: EdgeInsets.only(left: 20, right: 20, bottom: 20),
        child: GridView.count(
          primary: true,
          shrinkWrap: true,
          crossAxisCount: 4,
          children: List.generate(6, (index) {
            return Container(
                child: Column(
              children: <Widget>[
                CircleAvatar(
                  backgroundImage: ExactAssetImage(images[index]),
                  maxRadius: 25,
                  minRadius: 25,
                ),
                Container(
                    padding: EdgeInsets.only(top: 5),
                    child: Text(
                      headers[index],
                      style: TextStyle(color: Colors.white),
                    ))
              ],
            ));
          }),
        ));
  }

  _buildSkillsListWdget() {
    return Container(
        height: 350,
        decoration: new BoxDecoration(
            gradient: new LinearGradient(colors: <Color>[
              Colors.deepOrange[300],
              Colors.deepOrange[200]
            ]),
            color: Colors.blueGrey[100],
            borderRadius: new BorderRadius.all(Radius.circular(10))),
        margin: EdgeInsets.only(left: 20, right: 20, bottom: 20),
        child: GridView.count(
          childAspectRatio: 5,
          crossAxisCount: 2,
          children: List.generate(skils.length, (index) {
            return Container(
                height: 20,
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  skils[index],
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ));
          }),
        ));
  }

  _buildProfileHeaderWidget() {
    return Container(
      decoration: new BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 20.0, // has the effect of softening the shadow
              spreadRadius: 3.0, // has the effect of extending the shadow
              offset: Offset(
                5.0, // horizontal, move right 10
                10.0, // vertical, move down 10
              ),
            )
          ],
          gradient: new LinearGradient(
              colors: <Color>[Colors.deepOrange[400], Colors.deepOrange[300], Colors.deepOrange[200]]),
          borderRadius: new BorderRadius.all(Radius.circular(10))),
      height: 270,
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(left: 10, top: 5),
                    child: CircleAvatar(
                      backgroundImage: ExactAssetImage('assets/profile1.jpg'),
                      minRadius: 70,
                      maxRadius: 70,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 10, left: 15),
                    child: Text(
                      'GIRISHA P',
                      style: TextStyle(
                          shadows: <Shadow>[Shadow(color: Colors.brown)],
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                          height: 20,
                          child: Icon(
                            Icons.cake,
                            color: Colors.white,
                            size: 20,
                          )),
                      Container(
                        padding: EdgeInsets.only(left: 10),
                        child: Text(
                          '20/05/1996',
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                width: 25,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                      padding: EdgeInsets.only(top: 15),
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.build,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            'Senior Software Developer',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      )),
                  Container(
                      padding: EdgeInsets.only(top: 15),
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.person,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            'English, Hindi, Kannada, Tamil',
                            style: TextStyle(color: Colors.white, fontSize: 14),
                          )
                        ],
                      )),
                  Container(
                      padding: EdgeInsets.only(top: 15),
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.email,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            'pgirisha77@gmail.com',
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          )
                        ],
                      )),
                  Container(
                      padding: EdgeInsets.only(top: 15),
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.phone,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            '+91-7204994791',
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          )
                        ],
                      )),
                  Container(
                      padding: EdgeInsets.only(top: 10),
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.home,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            'Shimoga, Karnataka',
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          )
                        ],
                      )),
                ],
              )
            ],
          ),
          Divider(
            color: Colors.blueGrey,
          ),
          Container(
            padding: EdgeInsets.only(top: 5),
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
                  '#D7, SVR Apartment, Hinjewadi Phase 1, Pune, Maharashtra.',
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  _buildSkillSetIndicatorWidget() {
    return Container(
        height: 140,
        decoration: new BoxDecoration(
            borderRadius: new BorderRadius.all(Radius.circular(10))),
        margin: EdgeInsets.only(left: 20, right: 20),
        child: Row(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 25),
              child: CircleAvatar(
                backgroundImage: ExactAssetImage('assets/user.jpg'),
                maxRadius: 40,
                minRadius: 40,
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 60),
              child: CircleAvatar(
                backgroundImage: ExactAssetImage('assets/user.jpg'),
                maxRadius: 40,
                minRadius: 40,
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 60),
              child: CircleAvatar(
                backgroundImage: ExactAssetImage('assets/user.jpg'),
                maxRadius: 40,
                minRadius: 40,
              ),
            ),
          ],
        ));
  }
}
