import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/hexagon.clippath.util.dart';

class DetailCh2Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff2e4d5f),
        bottomNavigationBar: BottomAppBar(
          elevation: 0.0,
          color: Color(0xff234050),
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
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 32.0, vertical: 20.0),
                child: Text(
                  'Choose your own ready design',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 30.0,
                    height: 1.5,
                  ),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Container(
                      padding: EdgeInsets.all(12.0),
                      margin: EdgeInsets.all(4.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Stack(
                            // fit: StackFit.expand,
                            // alignment: Alignment.bottomRight,
                            children: [
                              Container(
                                width: 200,
                                height: 200,
                                child: ClipPath(
                                  child: Image.asset(
                                    'images/room${index % 2 + 1}.jpg',
                                    fit: BoxFit.cover,
                                    alignment: Alignment.center,
                                  ),
                                  clipper: HexagonClipper(diameter: 200),
                                ),
                              ),
                              Positioned(
                                bottom: 0.0,
                                right: 20.0,
                                child: ClipPath(
                                  child: Container(
                                    color: Color(0xffbb967c),
                                    width: 60,
                                    height: 60,
                                    child: Icon(Icons.chevron_right,
                                        color: Colors.white),
                                  ),
                                  clipper: HexagonClipper(diameter: 60),
                                ),
                              ),
                            ],
                          ),
                          Text(
                            'Kitchen I',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 26.0,
                            ),
                          ),
                          Container(
                            width: 200,
                            child: Text(
                              'The furniture from quality designed houses',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 13.0,
                                height: 1.5,
                              ),
                            ),
                          ),
                          Text(
                            '\$4.800',
                            style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.w600,
                            ),
                          )
                        ],
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
