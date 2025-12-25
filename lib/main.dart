import 'package:fivehour/views/data/constants.dart';
import 'package:fivehour/views/data/notifiers.dart';
import 'package:fivehour/views/pages/welcome_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    initThemeMode();
    super.initState();
  }

  void initThemeMode() async{
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final bool? repeat = prefs.getBool(KConstants.themeModeKey);
    isDarkModeNotifier.value = repeat ?? false;
  }

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
