import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:online_groceries_market/utils/app_colors.dart';
import 'package:online_groceries_market/utils/app_media.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: 
        Column(
          children: [
            buildProfileHeader(),
            SizedBox(height: 30),
            Divider(),
            buildProfileItem(
              iconPath: AppMedia.birnarsaSvgPath,
              text: "Orders",
              onTap: () {},
            ),
            buildProfileItem(
              iconPath: AppMedia.mydetaliasSvgPath,
              text: "My Detalis",
              onTap: () {},
            ),
            buildProfileItem(
              iconPath: AppMedia.delicrySvgPath,
              text: "Deliver Address",
              onTap: () {},
            ),
            buildProfileItem(
              iconPath: AppMedia.vectorsSvgPath,
              text: "Payment Methods",
              onTap: () {},
            ),
            buildProfileItem(
              iconPath: AppMedia.promoSvgPath,
              text: "Promo Cord",
              onTap: () {},
            ),
            buildProfileItem(
              iconPath: AppMedia.notifecationsSvgPath,
              text: "Notifecations",
              onTap: () {},
            ),
            buildProfileItem(
              iconPath: AppMedia.helpSvgPath,
              text: "Help",
              onTap: () {},
            ),
            buildProfileItem(
              iconPath: AppMedia.aboutSvgPath,
              text: "About",
              onTap: () {},
            ),
            SizedBox(height: 50),
            buildLogOutButton(),
          ],
        ),
        )
      ),
    );
  }

  InkWell buildLogOutButton() {
    return InkWell(
      onTap: () {},
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        padding: EdgeInsets.symmetric(horizontal: 16),
        height: 70,
        decoration: BoxDecoration(
          color: AppColor.whiteColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: [
            Icon(Icons.logout, color: AppColor.mainColor, size: 20),
            SizedBox(width: 110),
            Text(
              "Log out",
              style: TextStyle(
                fontSize: 18,
                fontFamily: "Gilroy",
                color: AppColor.mainColor,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Padding buildProfileHeader() {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Row(
        children: [
          CircleAvatar(
            radius: 40,
            child: Image.asset(AppMedia.dinozavrImagePath),
          ),
          SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    "dinozavr",
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: "Gilroy",
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.edit, size: 15, color: AppColor.mainColor),
                  ),
                ],
              ),
              Text(
                "dino@gmail.com",
                style: TextStyle(fontSize: 16, color: AppColor.greyColor),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

InkWell buildProfileItem({
  required String iconPath,
  required String text,
  required VoidCallback onTap,
}) {
  return InkWell(
    onTap: onTap,
    child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Row(
            children: [
              SvgPicture.asset(iconPath),
              SizedBox(width: 10),
              Text(
                text,
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: "Gilroy",
                  color: AppColor.blackColor,
                ),
              ),
              Spacer(),
              Icon(Icons.keyboard_arrow_right_outlined),
            ],
          ),
        ),
        Divider(),
      ],
    ),
  );
}