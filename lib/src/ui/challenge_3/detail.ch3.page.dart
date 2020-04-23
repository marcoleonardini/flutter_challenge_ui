import 'package:flutter/material.dart';
import 'package:flutter_challenge_ui/src/ui/challenge_3/home.ch3.page.dart';

class DetailCh3Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        Navigator.pop(context, _createRoute());
        return Future.value(true);
      },
      child: Scaffold(
        body: Container(
          child: Column(
            children: <Widget>[
              Hero(
                tag: 'new_york.jpg',
                child: Image.asset(
                  'images/new_york.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              Expanded(
                child: Container(
                  constraints: BoxConstraints.expand(),
                  child: Text('asdfg'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Route _createRoute() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => HomeCh3Page(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        var begin = 1.0;
        var end = 0.0;
        var curve = Curves.ease;

        var tween = Tween(begin: begin, end: end);
        var curvedAnimation = CurvedAnimation(
          parent: animation,
          curve: curve,
        );

        return FadeTransition(
          opacity: animation,
          child: child,
        );
      },
      transitionDuration: Duration(
        milliseconds: 650,
      ),
    );
  }
}
