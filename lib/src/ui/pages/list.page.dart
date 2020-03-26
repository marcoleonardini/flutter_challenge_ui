import 'package:flutter/material.dart';
import 'package:flutter_challenge_ui/src/ui/pages/detail.page.dart';
import 'package:flutter_challenge_ui/src/ui/utils/custom_clippath.util.dart';

final List<Color> _listColor = [
  Colors.cyan,
  Colors.yellow,
  Colors.blue,
  Colors.green,
  Colors.red,
  Colors.purple,
  Colors.pink,
];

class ListPage extends StatelessWidget {
  final String image;
  final Color color;

  ListPage({this.color, this.image});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Container(
        constraints: BoxConstraints.expand(),
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            _buildImage(),
            _buildListTree(),
          ],
        ),
      )),
    );
  }

  Widget _buildImage() {
    return Expanded(
      flex: 3,
      child: ClipPath(
        clipper: CustomClipPath(),
        child: Container(
          child: Image.asset(
            'images/baobab.jpg',
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }

  Widget _buildListTree() {
    return Expanded(
      flex: 5,
      child: Column(
        children: <Widget>[
          Container(
            color: Colors.white,
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            child: Row(
              children: <Widget>[
                Text(
                  'Tress in Your City',
                  style: TextStyle(fontSize: 26.0, fontWeight: FontWeight.w600),
                ),
                Spacer(),
                Text(
                  'See All',
                  style: TextStyle(
                      color: Colors.orange, fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Material(
                  color: Colors.white,
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailPage()));
                    },
                    child: TreeCard(index: index),
                  ),
                );
              },
              itemCount: 15,
            ),
          )
        ],
      ),
    );
  }
}

class TreeCard extends StatefulWidget {
  final int index;

  TreeCard({this.index});

  @override
  _TreeCardState createState() => _TreeCardState();
}

class _TreeCardState extends State<TreeCard> {
  IconData iconData = Icons.favorite_border;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Stack(
            overflow: Overflow.visible,
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: _listColor[widget.index % 7].withOpacity(0.35),
                ),
                width: 80.0,
                height: 120.0,
              ),
              Container(
                width: 120.0,
                height: 140.0,
                child: Image.asset(
                  'images/tree_${widget.index % 6}.png',
                  fit: BoxFit.contain,
                ),
              ),
            ],
          ),
          Container(
            child: Column(
              children: <Widget>[
                Text('TITLE'),
                Text('desccripcion'),
              ],
            ),
          ),
          IconButton(
            icon: Icon(iconData),
            iconSize: 20.0,
            color: iconData == Icons.favorite ? Colors.orange : Colors.grey,
            onPressed: () {
              print('asd');
              setState(() {
                iconData = iconData == Icons.favorite_border
                    ? Icons.favorite
                    : Icons.favorite_border;
              });
            },
          )
        ],
      ),
    );
  }
}
