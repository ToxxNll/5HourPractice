import 'package:flutter/material.dart';

class HeroWidget extends StatelessWidget {
  const HeroWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'hero-brReal',
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: Image(
          image: AssetImage('assets/images/someMountains.jpg'),
          color: Colors.cyan,
          colorBlendMode: BlendMode.hue,
        ),
      ),
    );
  }
}
