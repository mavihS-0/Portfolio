import 'package:flutter/material.dart';
import 'package:glowy_borders/glowy_borders.dart';

class ProfilePhoto extends StatelessWidget {
  const ProfilePhoto({
    super.key,
    required this.screenSize,
  });

  final double screenSize;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(screenSize<800?screenSize*0.1:screenSize*0.03),
      child: AnimatedGradientBorder(
        borderSize: 5,
        glowSize: 10,
        gradientColors: [
          Color(0xff522b5b),
          Color(0xff854f6c),
          Color(0xff854f6c),
          Color(0xffdfb6b2)
        ],
        borderRadius: BorderRadius.all(Radius.circular(999)),
        child: Image.asset('assets/profile.png'),
      ),
    );
  }
}