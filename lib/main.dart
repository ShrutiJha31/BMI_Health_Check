import 'package:flutter/material.dart';
import 'MyHomePage.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BMI Calculator',
      theme: ThemeData.dark().copyWith(

        primaryColor: Color(0xFFE65100),
        backgroundColor: Color(0xFF004D40),
        accentColor: Color(0xFFE65100),


      ),
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              'BMI CALCULATOR'
            ),
          ),
        ),
        body:MyHomePage()
      ),
    );
  }
}




