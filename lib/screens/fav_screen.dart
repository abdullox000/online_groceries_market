import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
                color: Color(0xFF181725),
                fontSize: 20,
                fontFamily: "Gilroy"
              ),
            ),
            SizedBox(height: 20,),
            Divider(),
            buildFavItoms(
              image: "assets/images/sprite.png",
              text: "Sprite Can",
              price: "\$1.50",
              text2: "325ml, Price",
            ),
            Divider(),
            buildFavItoms(
              image: "assets/images/dietcola.png",
              text: "Diet Coke",
              price: "\$1.99",
              text2: "355ml, Price"
            ),
            Divider(),
            buildFavItoms(
              image: "assets/images/apple.png",
              text: "Apple & Grape Juice",
              price: "\$15.50",
              text2: "2L, Price"
            ),
            Divider(),
            buildFavItoms(
              image: "assets/images/cola.jpg",
              text: "Coca Cola Can",
              price: "\$4.99",
              text2: "325ml, Price"
            ),
            Divider(),
            buildFavItoms(
              image: "assets/images/pepsi.png",
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
                        color: Color(0xFF181725),
                        fontSize: 16,
                        fontFamily: "Gilroy"
                      ),
                    ),
                    Text(
                      text2,
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xFF7C7C7C),
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
                    color: Color(0xFF181725),
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
          color: Color(0xFFF2F3F2),
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
                color: Color(0xFF53B175),
              ),
            ),
          ],
        ),
      ),
    );
  }
