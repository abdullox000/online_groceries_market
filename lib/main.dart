import 'package:flutter/material.dart';
import 'package:online_groceries_market/screens/splash_screen.dart';

void main() {
  runApp(const OnlineGroceriesApp());
}

class OnlineGroceriesApp extends StatelessWidget {
  const OnlineGroceriesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
