import 'package:flutter/material.dart';
import 'package:flutter_challenge_ui/src/ui/pages/list.page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: Colors.orange,
          constraints: BoxConstraints.expand(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              _buildBody(),
              _buildFlatButtonBottom(context),
            ],
          ),
        ),
      ),
    );
  }

  FlatButton _buildFlatButtonBottom(BuildContext context) {
    return FlatButton(
      color: Colors.transparent,
      child: Text(
        'Get Started',
        style: TextStyle(fontSize: 20.0, color: Colors.white),
      ),
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => ListPage()));
      },
    );
  }

  Expanded _buildBody() {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: Colors.purple.shade600,
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(
              32.0,
            ),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            RichText(
              text: TextSpan(
                  text: 'City',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24.0,
                  ),
                  children: [
                    TextSpan(
                        text: 'Tree', style: TextStyle(color: Colors.orange))
                  ]),
            ),
            SizedBox(
              height: 16.0,
            ),
            Text(
              'Welcome to',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 36.0,
              ),
            ),
            Text(
              'City Tree',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w300,
                fontSize: 36.0,
              ),
            ),
            SizedBox(
              height: 24.0,
            ),
            Expanded(
              child: Image.asset(
                'images/forest.png',
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
