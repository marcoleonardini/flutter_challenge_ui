import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailCh2Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff2e4d5f),
        bottomNavigationBar: BottomAppBar(
          color: Color(0xff2e4d5f),
          child: new Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              FlatButton(
                onPressed: () {},
                textColor: Color(0xffbb967c),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.home),
                    Icon(
                      Icons.swap_vertical_circle,
                      size: 4,
                    )
                  ],
                ),
              ),
              FlatButton(
                textColor: Colors.grey,
                onPressed: () {},
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.stop),
                  ],
                ),
              ),
              FlatButton(
                textColor: Colors.grey,
                onPressed: () {},
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.shopping_cart),
                  ],
                ),
              ),
            ],
          ),
        ),
        appBar: AppBar(
          iconTheme: IconThemeData(color: Color(0xffbb967c)),
          backgroundColor: Color(0xff2e4d5f),
          elevation: 0.0,
          leading: Icon(Icons.tune),
          actions: <Widget>[
            Icon(Icons.scatter_plot),
            SizedBox(
              width: 16.0,
            )
          ],
        ),
        body: Container(
          constraints: BoxConstraints.expand(),
          child: Column(
            children: <Widget>[
              Text('Choose your own ready design'),
              Expanded(
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => FlutterLogo(),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
