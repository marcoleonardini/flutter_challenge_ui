import 'package:flutter/material.dart';
import 'package:flutter_challenge_ui/menu.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Challenge UI',
      home: MenuApp(),
    );
  }
}
