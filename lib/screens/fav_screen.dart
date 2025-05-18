import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:online_groceries_market/utils/app_colors.dart';
import 'package:online_groceries_market/utils/app_media.dart';

class FavScreen extends StatelessWidget {
  const FavScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child:
        Column(
          children: [
            SizedBox(width: 1000,),
            Text(
              "Favorurite",
              style: TextStyle(
                color: AppColor.blackColor,
                fontSize: 20,
                fontFamily: "Gilroy"
              ),
            ),
            SizedBox(height: 20,),
            Divider(),
            buildFavItoms(
              image: AppMedia.spriteImagePath,
              text: "Sprite Can",
              price: "\$1.50",
              text2: "325ml, Price",
            ),
            Divider(),
            buildFavItoms(
              image: AppMedia.dietcolaImagePath,
              text: "Diet Coke",
              price: "\$1.99",
              text2: "355ml, Price"
            ),
            Divider(),
            buildFavItoms(
              image: AppMedia.appleImagePath,
              text: "Apple & Grape Juice",
              price: "\$15.50",
              text2: "2L, Price"
            ),
            Divider(),
            buildFavItoms(
              image: AppMedia.colaImagePath,
              text: "Coca Cola Can",
              price: "\$4.99",
              text2: "325ml, Price"
            ),
            Divider(),
            buildFavItoms(
              image: AppMedia.pepseImagePath,
              text: "Pepsi Can",
              price: "\$4.99",
              text2: "330ml, Price"
            ),
            Divider(),         
            SizedBox(height: 40,),   
            buildLogOutButton(),
          ],
      )),
        )
    );
  }

  Padding buildFavItoms({
    required String image,
    required String text,
    required String price,
    required String text2
    }) {
    return Padding(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(image),
                SizedBox(width: 25,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      text,
                      style: TextStyle(
                        color: AppColor.blackColor,
                        fontSize: 16,
                        fontFamily: "Gilroy"
                      ),
                    ),
                    Text(
                      text2,
                      style: TextStyle(
                        fontSize: 14,
                        color: AppColor.greyColor,
                        fontFamily: "Gilroy-Medium.ttf"
                      ),
                    )
                  ],
                ),
                Spacer(),
                Text(
                  price,
                  style: TextStyle(
                    fontFamily: "Gilroy",
                    fontSize: 16,
                    color: AppColor.blackColor,
                  ),
                ),
                SizedBox(width: 10,),
                SvgPicture.asset("assets/svgs/arrow.svg")
              ],
            ),
          );
  }
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
            SizedBox(width: 110),
            Text(
              "Add All To Cart",
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
