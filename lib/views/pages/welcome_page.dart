import 'package:fivehour/views/pages/home_page.dart';
import 'package:fivehour/views/pages/login_page.dart';
import 'package:fivehour/views/widgets/hero_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../widget_tree.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF121417),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15),
        child: Stack(
          children: [
            Positioned.fill(
              child: SvgPicture.asset(
                'assets/images/BgFrame.svg',
                fit: BoxFit.cover,
                alignment: Alignment.bottomCenter,
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                spacing: 10,
                children: [
                  // Image(image: AssetImage('assets/images/photo.png')),
                  FittedBox(
                    child: Text(
                      "Flutter App",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        letterSpacing: 3,
                      ),
                    ),
                  ),
                  FilledButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return WidgetTree();
                          },
                        ),
                      );
                    },
                    style: FilledButton.styleFrom(
                      minimumSize: Size(double.infinity, 50),
                    ),
                    child: Text("Get Started", style: TextStyle(fontSize: 20)),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return LoginPage();
                          },
                        ),
                      );
                    },
                    style: FilledButton.styleFrom(
                      minimumSize: Size(double.infinity, 50),
                    ),
                    child: Text("Login", style: TextStyle(fontSize: 20)),
                  ),
                  Container(height: 20),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
