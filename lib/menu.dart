import 'package:flutter/material.dart';
import 'package:flutter_challenge_ui/src/ui/challenge_1/pages/home.ch1.page.dart';
import 'package:flutter_challenge_ui/src/ui/challenge_2/pages/home.ch2.page.dart';

class MenuApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: <Widget>[
            RaisedButton(
              child: Text('Challenge UI 1'),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomeCh1Page()));
              },
            ),
            RaisedButton(
              child: Text('Challenge UI 2'),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomeCh2Page()));
              },
            )
          ],
        ),
      ),
    );
  }
}
