import 'package:flutter/material.dart';
import 'package:flutter_challenge_ui/src/ui/challenge_2/pages/detail.ch2.page.dart';
import 'package:flutter_challenge_ui/src/ui/challenge_2/utils/background.clippath.util.dart';
import 'package:flutter_challenge_ui/src/ui/challenge_2/utils/cube.painter.util.dart';

class HomeCh2Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: Color(0xff2e4d5f),
          constraints: BoxConstraints.expand(),
          child: Stack(
            fit: StackFit.expand,
            children: <Widget>[
              ClipPath(
                child: Container(
                  color: Color(0xffefd0b3),
                  constraints: BoxConstraints.expand(),
                ),
                clipper: BackgroundClipPath(),
              ),
              Positioned(
                left: -40.0,
                top: -40.0,
                child: Transform.scale(
                  scale: 1.4,
                  child: CustomPaint(
                    painter: CubePainter(color: Color(0xff2c4957)),
                  ),
                ),
              ),
              Positioned(
                left: 220.0,
                top: 170.0,
                child: Transform.scale(
                  scale: 0.75,
                  child: CustomPaint(
                    painter: CubePainter(color: Color(0xff856a5e)),
                  ),
                ),
              ),
              Positioned(
                // left: 140.0,
                right: 225,
                top: -200,
                child: Transform.scale(
                  scale: 1.7,
                  child: CustomPaint(
                    painter:
                        CubePainter(color: Color(0xffbb967c), amount: 0.04),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(32.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    SizedBox(height: MediaQuery.of(context).size.height * 0.40),
                    Text(
                      'Ready made\nrooms to go',
                      style: TextStyle(
                        color: Color(0xffbb967c),
                        fontWeight: FontWeight.w600,
                        fontSize: 32.0,
                        height: 1.5,
                      ),
                    ),
                    Text(
                      'Virtual digital showrooms transform your dreams into reality at once touch of screen.',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey,
                        height: 2,
                        letterSpacing: 1,
                      ),
                    ),
                    SizedBox(
                      height: 12.0,
                    ),
                    FlatButton(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: Color(0xffbb967c),
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      textColor: Color(0xffbb967c),
                      child: Container(
                        padding: EdgeInsets.all(16.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Text(
                              'Get Started',
                              style: TextStyle(
                                fontSize: 20.0,
                              ),
                            ),
                            Icon(Icons.keyboard_arrow_right)
                          ],
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DetailCh2Page()));
                      },
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
