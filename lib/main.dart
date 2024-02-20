import 'package:flutter/material.dart';
import 'package:onboading_screen/screen/signin_screen.dart';
import 'package:onboading_screen/screen/introduction_screen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

bool show = true;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = await SharedPreferences.getInstance();
  show = prefs.getBool('ON_BOARDING ') ?? true;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter on Boarding',
      theme: ThemeData(primaryColor: Colors.blue),
      home: SignInScreen(),
      // home: show ? IntroScreen() : SignInScreen(),
    );
  }
}
