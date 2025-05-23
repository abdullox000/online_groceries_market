import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:online_groceries_market/screens/product_screen.dart';
import 'package:online_groceries_market/utils/app_colors.dart';
import 'package:online_groceries_market/utils/app_media.dart';

class ShopScreen extends StatelessWidget {
  const ShopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16),
          child: 
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(AppMedia.sabziImagePath),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.location_on, color: Colors.red),
                    const SizedBox(width: 8),
                    const Text("Dhaka, Banassre"),
                  ],
                ),
                SizedBox(height: 20,),
                TextField(
                  decoration: InputDecoration(
                    hintText: "Search Store",
                    prefixIcon: const Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
              
                // Exclusive Offer
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("Exclusive Offer", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    TextButton(
                      onPressed: () {}, // See all
                      child: const Text("See all"),
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                Row(children:[ 
                  buildContainerItom(context: context, image: AppMedia.bananImagePath, text: "Organic Bananas", text2: "7pcs, Priceg", price: "4.99"),
                  SizedBox(width: 20,),
                  buildContainerItom(context: context, image: AppMedia.olmaImagePath, text: "Red Apple", text2: "1kg, Priceg", price: "4.99"),
                ]
                ),
                SizedBox(height: 20),
                Row(children:[ 
                  buildContainerItom(context: context, image: AppMedia.gingerImagePath, text: "Ginger", text2: "250gm, Priceg", price: "2.99"),
                  SizedBox(width: 20,),
                  buildContainerItom(context: context, image: AppMedia.papperImagePath, text: "Pepper", text2: "1kg, Priceg", price: "4.99"),
                ]
                ),
                SizedBox(height: 20,),
                Row(children:[ 
                  buildContainerItom(context: context, image: AppMedia.goshImagePath, text: "Beef Bone", text2: "1kg, Priceg", price: "4.99"),
                  SizedBox(width: 20,),
                  buildContainerItom(context: context, image: AppMedia.tovuqImagePath, text: "Broiler Chicken", text2: "1kg, Priceg", price: "4.99"),
                ]
                ),
              ],
            
            ),
          
        ),
      ),
    );
  }
}




Container buildContainerItom({
    required BuildContext context,
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
                          Navigator.push(
                            context,
                            CupertinoPageRoute(builder: (context) => ProductDetailPage()),
                          );
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