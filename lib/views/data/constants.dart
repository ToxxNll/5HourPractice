import 'package:flutter/material.dart';

class KTextStyle{
  static const TextStyle titleTealtext = TextStyle(
    color: Colors.teal,
    fontSize: 18,
    fontWeight: FontWeight.bold
  );
  static const TextStyle descriptionText = TextStyle(
    fontSize: 16,
  );
}

class AppColorScheme{
  static const Color primary = Color(0xFF6C63FF);
  static const Color background = Color(0xFF121417);
  static const Color surface = Color(0xFF1A1F24);
  static const Color accent = Color(0xFFFFB703);
  static const Color secondary = Color(0xFF3A5A40);

}
class KConstants{
  static const String themeModeKey = 'themeModeKey';
}