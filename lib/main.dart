import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:places/Home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "PLaces",
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity
        ),
      home: MyHome(),
    );
  }
}