import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:online_groceries_market/utils/app_colors.dart';
import 'package:online_groceries_market/utils/app_media.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: 
        Column(
          children: [
            buildPoisk(),
            Row(
              children: [
                SizedBox(width: 35, ),
                buildContainerItom(
                  image: AppMedia.eggYashikImagePath,
                  text: "Egg Chicken Red",
                  text2: "4pcs, Price",
                  price: "1.99"
                ),
                buildContainerItom(
                  image: AppMedia.eggYashikchaImagePath,
                  text: "Egg Chicken White",
                  text2: "180g, Price",
                  price: "1.50"
                ),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                SizedBox(width: 35,),
                buildContainerItom(
                  image: AppMedia.eggPastaImagePath,
                  text: "Egg Pasta",
                  text2: "30gm, Price",
                  price: "15.99"
                ),
                buildContainerItom(
                  image: AppMedia.eggnoodlesImagePath,
                  text: "Egg Noodles",
                  text2: "2L, Price",
                  price: "15.99"
                ),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                SizedBox(width: 35,),
                buildContainerItom(
                  image: AppMedia.mayonnaisEgglessImagePath,
                  text: "Mayonnais Eggless",
                  text2: "30gm, Price",
                  price: "15.99"
                ),
                buildContainerItom(
                  image: AppMedia.eggnoodleImagePath,
                  text: "Egg Noodles",
                  text2: "30gm, Price",
                  price: "15.99"
                ),
              ],
            )
          ],
        )
      ),
      ),
    );
  }

  Container buildContainerItom({
    required String image,
    required String text,
    required String text2,
    required String price,
  }) {
    return Container(
                height: 210,
                width: 150,
                margin: EdgeInsets.symmetric(horizontal: 10),
                padding: EdgeInsets.only(left: 15),
                decoration: BoxDecoration(
                  color: AppColor.whiteColor,
                  borderRadius: BorderRadius.circular(17),
                  border: Border.all()
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(image, width: 110, height: 90,),
                    Text(
                      text, 
                      style: TextStyle(
                        fontFamily: "Gilroy",
                        fontSize: 14,
                        color: AppColor.blackColor,
                      ),
                    ),
                    Text(
                      text2,
                      style: TextStyle(
                        color: AppColor.greyColor,
                        fontSize: 12,
                        fontFamily: "Gilroy-Medium"
                      ),
                    ),
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "\$${price}",
                          style: TextStyle(
                            color: AppColor.blackColor,
                            fontSize: 16,
                            fontFamily: "Gilroy"
                          ),
                        ),
                        Spacer(),
                        IconButton.filled(
                        style: IconButton.styleFrom(
                          backgroundColor: AppColor.mainColor,
                          shape: RoundedRectangleBorder(
                            side: BorderSide(color: AppColor.lightgreyColor),

                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        onPressed: () {
                          (());
                        },
                        icon: Icon(Icons.add, color: Colors.white)),
                        SizedBox(width: 5,)
                      ],
                    ),
                    SizedBox(height: 10,)
                  ],
                ),
              );
  }

  Row buildPoisk() {
    return Row(
            children: [
              Expanded(
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                  decoration: BoxDecoration(
                    color: AppColor.whiteColor,
                    borderRadius: BorderRadius.circular(17),
                  ),
                  height: 51,
                  alignment: Alignment.center,
                  child: Row(
                    children: [
                      SvgPicture.asset("assets/svgs/poisk.svg"),
                      SizedBox(width: 5,),
                      Text(
                        "Egg",
                        style: TextStyle(
                          fontFamily: "Gilroy",
                          fontSize: 14,
                          color: AppColor.lightblackColor,
                        ),
                      ),
                      Spacer(),
                      GestureDetector(child: Icon(Icons.cancel_outlined)),
                    ],
                  ),
                ),
              ),
              SvgPicture.asset("assets/svgs/filtr.svg"),
              SizedBox(width: 15,)
            ],
          );
  }
}
