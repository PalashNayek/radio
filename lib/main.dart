import 'package:flutter/material.dart';
import 'package:radio/di/setup_locator.dart';
import 'package:radio/screens/radio_screen.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RadioScreen(),
    );
  }
}
