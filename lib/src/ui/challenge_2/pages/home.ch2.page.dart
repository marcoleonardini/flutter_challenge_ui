import 'package:flutter/material.dart';
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
            ],
          ),
        ),
      ),
    );
  }
}
