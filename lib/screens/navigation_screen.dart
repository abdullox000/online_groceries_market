import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:online_groceries_market/screens/cart_screen.dart';
import 'package:online_groceries_market/screens/explore_screen.dart';
import 'package:online_groceries_market/screens/fav_screen.dart';
import 'package:online_groceries_market/screens/profile_screen.dart';
import 'package:online_groceries_market/screens/shop_screen.dart';
import 'package:online_groceries_market/utils/app_colors.dart';
import 'package:online_groceries_market/utils/app_media.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({super.key});

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  int selectectedIndex = 0;

  List<Widget> screens = [
    ShopScreen(),
    ExploreScreen(),
    CartScreen(),
    FavScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[selectectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        onTap: (value) {
          log(value.toString());
          setState(() {
            selectectedIndex = value;
          });
        },
        selectedItemColor: AppColor.mainColor,
        unselectedItemColor: AppColor.blackColor,
        showUnselectedLabels: true,
        showSelectedLabels: true,
        currentIndex: selectectedIndex,
        items: [
          BottomNavigationBarItem(
            label: "Shop",
            icon: SvgPicture.asset(
              AppMedia.homeSvgPath,
              color:
                  selectectedIndex == 0 ? AppColor.mainColor : AppColor.blackColor,
            ),
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              AppMedia.exploreSvgPath,
              color:
                  selectectedIndex == 1 ? AppColor.mainColor : AppColor.blackColor,
            ),

            label: "Explore",
          ),
          BottomNavigationBarItem(
            label: "Cart",

            icon: SvgPicture.asset(
              AppMedia.cartSvgPath,

              color:
                  selectectedIndex == 2 ? AppColor.mainColor : AppColor.blackColor,
            ),
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              AppMedia.favoriteSvgPath,
              color:
                  selectectedIndex == 3 ? AppColor.mainColor : AppColor.blackColor,
            ),
            label: "Favorite",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              AppMedia.profileSvgPath,
              color:
                  selectectedIndex == 4 ? AppColor.mainColor : AppColor.blackColor,
            ),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
