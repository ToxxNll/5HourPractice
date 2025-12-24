import 'package:fivehour/views/data/notifiers.dart';
import 'package:fivehour/views/pages/welcome_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: isDarkModeNotifier,
      builder: (context, isDarkMode, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(
              // seedColor: const Color.fromARGB(255, 34, 152, 248),
              seedColor: const Color(0xFF3A5A40),
              secondary: Color(0xFF3A5A40),
              surface: isDarkMode ? Color(0xFF1A1F24) : Colors.white,
              //surfaceBright: Colors.white12,
              brightness: isDarkMode ? Brightness.dark : Brightness.light,
            ),
            // colorScheme: const ColorScheme.dark(
            //   primary: Color(0xFF3A5A40),
            //   secondary: Color(0xFF3A5A40),
            //   background: Color(0xFF121417),
            //   surface: Color(0xFF1A1F24),
            //   onPrimary: Colors.white,
            //   onSurface: Color(0xFFEAECEF),
            // ),
          ),
          home: WelcomePage(),
        );
      },
    );
  }
}
