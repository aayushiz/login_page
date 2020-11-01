import 'package:flutter/material.dart';
import './reg_part.dart';
import './login_page.dart';

void main() {
  runApp(
    MaterialApp(
      home: Myapp(),
    ),
  );
}

class Myapp extends StatefulWidget {
  @override
  _MyappState createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome'),
        backgroundColor: Colors.grey,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => RegPage()));
              },
              child: Text('Register'),
              color: Colors.grey,
            ),
            SizedBox(
              height: 20.0,
            ),
            RaisedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginPage()));
              },
              child: Text('Login'),
              color: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}
