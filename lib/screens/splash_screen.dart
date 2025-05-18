import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:online_groceries_market/screens/onboarding_screen.dart';
import 'package:online_groceries_market/utils/app_colors.dart';
import 'package:online_groceries_market/utils/app_media.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      Duration(seconds: 3),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => OnboardingScreen()),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.mainColor,
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          spacing: 15,
          children: [
            SvgPicture.asset(AppMedia.logoSvgPath, height: 50, width: 50),
            Column(
              spacing: 0,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "nectar",
                  style: TextStyle(
                    height: 0,
                    fontSize: 50,
                    color: Colors.white,
                    fontFamily: "Gilroy-Light",
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "online groceriet",
                  style: TextStyle(
                    height: -0.5,
                    fontFamily: "Gilroy-Medium",
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                    color: Colors.white,
                    letterSpacing: 3,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
