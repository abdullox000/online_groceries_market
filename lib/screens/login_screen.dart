import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:online_groceries_market/extensions/context_ext.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset("assets/images/login_1.jpg"),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: context.getScreenWidth() * 0.56,
                  child: Text(
                    "Get your groceries with nectar",
                    style: TextStyle(fontFamily: "Gilroy", fontSize: 26),
                  ),
                ),
                SizedBox(height: 30),
                InkWell(
                  onTap: () {},
                  child: SizedBox(
                    width: double.infinity,
                    child: Row(
                      spacing: 20,
                      children: [
                        Image.asset("assets/images/flag.jpg"),
                        Text("+880"),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 5),
                Divider(),
                SizedBox(height: 30),

                Center(
                  child: Text(
                    textAlign: TextAlign.center,
                    "Or connect with social account",
                    style: TextStyle(color: Color(0xFF828282), fontSize: 14),
                  ),
                ),
                SizedBox(height: 50),
                buildLoginWithSocialMedia(
                  svgPath: "assets/svgs/google.svg",
                  text: "Continue with Google",
                  color: Color(0xFF5383EC),
                ),
                SizedBox(height: 20),
                buildLoginWithSocialMedia(
                  svgPath: "assets/svgs/meta.svg",
                  text: "Continue with Facebook",
                  color: Color(0xFF4A66AC),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container buildLoginWithSocialMedia({
    required String svgPath,
    required String text,
    required Color color,
  }) {
    return Container(
      height: 67,
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 20,
        children: [
          SvgPicture.asset(svgPath),
          Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontFamily: "Gilroy",
            ),
          ),
        ],
      ),
    );
  }
}