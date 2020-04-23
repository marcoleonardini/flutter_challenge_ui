import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_challenge_ui/src/ui/challenge_3/detail.ch3.page.dart';

class HomeCh3Page extends StatefulWidget {
  @override
  _HomeCh3PageState createState() => _HomeCh3PageState();
}

class _HomeCh3PageState extends State<HomeCh3Page> {
  final List<String> _listImages = [
    'new_york.jpg',
    // 'washington.jpg',
    // 'golden.jpg',
  ];

  final PageController _pageController = PageController(
    viewportFraction: 0.65,
  );

  double _currentPageValue = 0.0;

  @override
  void initState() {
    super.initState();

    _pageController.addListener(() {
      setState(() {
        _currentPageValue = _pageController.page;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blueAccent[100],
        alignment: Alignment.center,
        child: Container(
          height: MediaQuery.of(context).size.height * 0.45,
          child: PageView.builder(
            controller: _pageController,
            itemCount: _listImages.length,
            itemBuilder: _itemBuilder,
          ),
        ),
      ),
    );
  }

  Widget _itemBuilder(BuildContext context, int index) {
    double n = (index - _currentPageValue).abs();

    n = 1.0 - n.clamp(0.0, 0.75);
    double nn = n.clamp(0.90, 1);
    return ItemPageView(
      opacity: n,
      size: nn,
      image: _listImages[index],
    );
  }
}

class ItemPageView extends StatefulWidget {
  final double opacity;
  final String image;
  final double size;

  ItemPageView({Key key, this.opacity, this.image, this.size})
      : super(key: key);

  @override
  _ItemPageViewState createState() => _ItemPageViewState();
}

class _ItemPageViewState extends State<ItemPageView> {
  bool open = false;

  Alignment _alignment = Alignment.center;
  Alignment _alignment2 = Alignment.center;

  double _widthFactor = 150.0;
  double _heightFactor = 150.0;
  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: widget.size,
      child: Opacity(
        opacity: widget.opacity,
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            AnimatedAlign(
              alignment: _alignment2,
              duration: Duration(milliseconds: 250),
              curve: Curves.linear,
              child: AnimatedContainer(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  color: Colors.white,
                ),
                height: _heightFactor,
                width: _widthFactor,
                duration: Duration(milliseconds: 250),
                child: Column(
                  children: <Widget>[],
                ),
              ),
            ),
            AnimatedAlign(
              duration: Duration(milliseconds: 250),
              curve: Curves.linear,
              alignment: _alignment,
              child: FractionallySizedBox(
                heightFactor: 0.8,
                widthFactor: 0.85,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      if (!open) {
                        _alignment = Alignment.topCenter;
                        _alignment2 = Alignment.bottomCenter;
                        _widthFactor = 275.0;
                        _heightFactor = 220.0;
                        open = true;
                      } else {
                        Navigator.push(context, _createRoute());
                      }
                    });
                  },
                  onVerticalDragEnd: (dragDetails) {
                    setState(() {
                      _alignment = Alignment.center;
                      _alignment2 = Alignment.center;
                      _widthFactor = 180.0;
                      _heightFactor = 200.0;
                      open = false;
                    });
                  },
                  child: Material(
                    elevation: 12,
                    color: Colors.transparent,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(6.0),
                        child: Hero(
                          tag: widget.image,
                          child: Image.asset(
                            'images/${widget.image}',
                            fit: BoxFit.cover,
                          ),
                        )),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Route _createRoute() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => DetailCh3Page(),
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
