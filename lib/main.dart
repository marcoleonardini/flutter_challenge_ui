import 'package:flutter/material.dart';
import 'package:flutter_challenge_ui/src/ui/pages/home.page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Challenge UI',
      home: HomePage(),
    );
  }
}
