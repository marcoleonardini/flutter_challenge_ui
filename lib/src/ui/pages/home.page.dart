import 'package:flutter/material.dart';

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
            children: <Widget>[_buildBody(), _buildFlatButtonBottom()],
          ),
        ),
      ),
    );
  }

  FlatButton _buildFlatButtonBottom() {
    return FlatButton(
      color: Colors.transparent,
      child: Text(
        'Get Started',
        style: TextStyle(fontSize: 20.0, color: Colors.white),
      ),
      onPressed: () {
        print('clicked');
      },
    );
  }

  Expanded _buildBody() {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: Colors.purple,
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
