import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          automaticallyImplyLeading: true,
          iconTheme: IconThemeData(color: Colors.black),
          actions: <Widget>[
            Icon(
              Icons.favorite,
              color: Colors.orange,
            ),
            SizedBox(
              width: 28.0,
            ),
          ],
        ),
        body: Container(
          constraints: BoxConstraints.expand(),
          color: Colors.white,
          child: _buildBody(),
        ),
      ),
    );
  }

  Widget _buildBody() {
    return Column(
      children: <Widget>[
        Expanded(
          flex: 3,
          child: Row(
            children: <Widget>[
              Expanded(
                flex: 5,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.horizontal(
                      right: Radius.circular(24.0),
                    ),
                    color: Colors.purple.withOpacity(0.35),
                  ),
                  child: Column(
                    children: <Widget>[
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(
                            // bottom: 8.0,
                            left: 20.0,
                            top: 16.0,
                          ),
                          child: Text(
                            'Baobab',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontSize: 24.0,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                          flex: 2,
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Placeholder(),
                          )),
                      Expanded(
                        flex: 3,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            'images/tree_3.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      SizedBox(
                        height: 40,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Icon(
                            Icons.wb_sunny,
                            color: Colors.orange,
                          ),
                          Text('difuse'),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Icon(
                            Icons.branding_watermark,
                            color: Colors.orange,
                          ),
                          Text('no need'),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Icon(
                            Icons.hot_tub,
                            color: Colors.orange,
                          ),
                          Text('18 - 35`'),
                        ],
                      ),
                      SizedBox(
                        height: 40,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            padding: EdgeInsets.only(
              left: 20.0,
              right: 40.0,
              top: 20.0,
              bottom: 20.0,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Text(
                      'About this tree',
                      style: TextStyle(fontSize: 24.0),
                    ),
                    Spacer(),
                    Text(
                      'More',
                      style: TextStyle(color: Colors.orange),
                    ),
                  ],
                ),
                Text(
                  'ad asd asdlkasnc iwefh iwuffowiau biaow bwia fiwauf iawrb iawrb iwariwa ',
                  textAlign: TextAlign.justify,
                  style: TextStyle(color: Colors.black54),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
