import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey[700],
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 80.0,
                // backgroundColor: Colors.white,
                backgroundImage: AssetImage('images/fadhil.jpg'),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text('Fadhil H. K.',
                  style: TextStyle(
                    fontFamily: 'Pacifico',
                    fontSize: 36.0,
                    color: Colors.white,
                  )),
              Text('MOBILE DEVELOPER',
                  style: TextStyle(
                    fontFamily: 'SourceSansPro',
                    fontSize: 18.0,
                    color: Colors.white,
                  )),
              SizedBox(
                width: 100.0,
                height: 10.0,
                child: Divider(
                  color: Colors.blueGrey[300],
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.blueGrey[700],
                  ),
                  title: Text('+62 8787 899 1253',
                      style: TextStyle(
                        fontFamily: 'SourceSansPro',
                        fontSize: 18.0,
                        color: Colors.blueGrey[900],
                      )),
                ),
              ),
              Card(
                  margin:
                      EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.email,
                      color: Colors.blueGrey[700],
                    ),
                    title: Text('fadhilhanri@gmail.com',
                        style: TextStyle(
                          fontFamily: 'SourceSansPro',
                          fontSize: 18.0,
                          color: Colors.blueGrey[900],
                        )),
                  )),
              Container(
                width: double.infinity,
              )
            ],
          ),
        ),
      ),
    );
  }
}
