import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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
              iconPath: "assets/svgs/birnarsa.svg",
              text: "Orders",
              onTap: () {},
            ),
            buildProfileItem(
              iconPath: "assets/svgs/mydetalias.svg",
              text: "My Detalis",
              onTap: () {},
            ),
            buildProfileItem(
              iconPath: "assets/svgs/delicry.svg",
              text: "Deliver Address",
              onTap: () {},
            ),
            buildProfileItem(
              iconPath: "assets/svgs/vectors.svg",
              text: "Payment Methods",
              onTap: () {},
            ),
            buildProfileItem(
              iconPath: "assets/svgs/promo.svg",
              text: "Promo Cord",
              onTap: () {},
            ),
            buildProfileItem(
              iconPath: "assets/svgs/Notifecations.svg",
              text: "Notifecations",
              onTap: () {},
            ),
            buildProfileItem(
              iconPath: "assets/svgs/help.svg",
              text: "Help",
              onTap: () {},
            ),
            buildProfileItem(
              iconPath: "assets/svgs/About.svg",
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
          color: Color(0xFFF2F3F2),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: [
            Icon(Icons.logout, color: Color(0xFF53B175), size: 20),
            SizedBox(width: 110),
            Text(
              "Log out",
              style: TextStyle(
                fontSize: 18,
                fontFamily: "Gilroy",
                color: Color(0xFF53B175),
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
            child: Image.asset("assets/images/dino.jpg"),
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
                    icon: Icon(Icons.edit, size: 15, color: Color(0xFF53B175)),
                  ),
                ],
              ),
              Text(
                "dino@gmail.com",
                style: TextStyle(fontSize: 16, color: Color(0xFF7C7C7C)),
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
                  color: Color(0xFF181725),
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