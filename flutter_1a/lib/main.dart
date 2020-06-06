import 'package:flutter/material.dart';

void main() => runApp(MyApp());

// Test Style
TextStyle mainText = TextStyle(
  color: Colors.red[200],
  fontSize: 24,
  fontWeight: FontWeight.w900,
);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('TESTING LAYOUTS'),
        ),
        body: Center(
          child: Container(
            width: 500,
            height: 500,
            color: Colors.red[200]
          ),
        ),
      ),
    );
  }
}