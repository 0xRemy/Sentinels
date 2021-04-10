import 'package:flutter/material.dart';
import 'package:project/landing.dart';
import 'package:project/wolkie_tolkie.dart';
import 'package:project/found.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: foundperson(),
    );
  }
}
