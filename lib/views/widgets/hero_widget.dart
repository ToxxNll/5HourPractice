import 'package:flutter/material.dart';

class HeroWidget extends StatelessWidget {
  const HeroWidget({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentGeometry.topCenter,
      children: [
        Hero(
          tag: 'hero-login',
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: Image(
              image: AssetImage('assets/images/someMountains.jpg'),
              // color: Colors.cyan,
              color: Color(0xFF3A5A40),
              colorBlendMode: BlendMode.hardLight,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 30),
          child: FittedBox(
            child: Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 80,
                letterSpacing: 10,
                color: Colors.black54,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
