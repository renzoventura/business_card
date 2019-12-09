import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('images/renzo-cropped.png'),
              ),
              Text(
                  'Renzo Ventura',
                style: TextStyle(
                fontFamily: 'Tomorrow-Light',
                color: Colors.white,
                fontSize: 45.0,
                ),
              ),
              Text(
                  'SOFTWARE DEVELOPER',
                style: TextStyle(
                  fontFamily: 'Tomorrow-ExtraLight',
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                  color: Colors.white,
                  letterSpacing: 8.0
                ),
              ),
              SizedBox(
                height: 20.0,
                width: 150.0,
                child: Divider(
                  color: Colors.white,
                  thickness: 1,
                ),
              ),
              contactBox('+64 27 513 9677', Icons.phone_iphone),
              contactBox('renzoventura96@gmail.com', Icons.email)
            ],
          ),
        ),
      ),
    );
  }

  Card contactBox(String value, IconData icon) {
    return Card(
      margin: EdgeInsets.symmetric(
          vertical: 10.0,
          horizontal: 25.0
      ),
      child: Padding(
          padding: EdgeInsets.all(0),
          child: ListTile(
            leading: Icon(
              icon,
              color: Colors.blueGrey.shade600,
            ),
            title: Text(
              value,
              style: TextStyle(
                fontFamily: 'Tomorrow-Light',
                fontWeight: FontWeight.bold,
                fontSize: 15.0,
              ),
            ),
          ),
      ),
      color: Colors.white,
    );
  }

}
