import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:online_groceries_market/extensions/context_ext.dart';
import 'package:online_groceries_market/utils/app_colors.dart';
import 'package:online_groceries_market/utils/app_media.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  double total = 0;
  bool isVisible = true;

  ScrollController scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    scrollController.addListener(() {
      if (scrollController.position.userScrollDirection ==
          ScrollDirection.forward) {
        Future.delayed(
          Duration(milliseconds: 600),
          () => setState(() {
            isVisible = false;
          }),
        );
      } else if (scrollController.position.userScrollDirection ==
          ScrollDirection.reverse) {
        Future.delayed(
          Duration(milliseconds: 600),
          () => setState(() {
            isVisible = true;
          }),
        );
      } else if (scrollController.position.userScrollDirection ==
          ScrollDirection.idle) {
        print('Scroll stopped');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(),
      body: SingleChildScrollView(
        controller: scrollController,
        padding: const EdgeInsets.symmetric(horizontal: 16),

        child: buildCartItemsList(),
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton:
          isVisible
              ? Container(
                margin: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                decoration: BoxDecoration(
                  color: AppColor.mainColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                alignment: Alignment.center,
                width: double.infinity,
                height: 50,

                child: Text(
                  "Go to Checkout ${total.toStringAsFixed(2)}",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontFamily: "Girloy",
                    fontWeight: FontWeight.w400,
                  ),
                ),
              )
              : null,
    );
  }

  Column buildCartItemsList() {
    return Column(
      children: [
        SizedBox(height: 15),
        CartItemWidget(
          onChanged: (value) {
            setState(() {
              total += value;
            });
          },
          cost: 4.99,
          description: "1kg, Price",
          imagePath: AppMedia.papperImagePath,
          itemName: "Pepper",
        ),
        CartItemWidget(
          onChanged: (value) {
            setState(() {
              total += value;
            });
          },
          cost: 1.99,
          description: "4psc, Price",
          imagePath: AppMedia.eggImagePath,
          itemName: "Egg Chicken Red",
        ),
        CartItemWidget(
          onChanged: (value) {
            setState(() {
              total += value;
            });
          },
          cost: 3,
          description: "12kg, Price",
          imagePath: AppMedia.bananImagePath,
          itemName: "Organic Bananas",
        ),
        CartItemWidget(
          onChanged: (value) {
            setState(() {
              total += value;
            });
          },
          cost: 2.99,
          description: "250gm, Price",
          imagePath: AppMedia.gingerImagePath,
          itemName: "Ginger",
        ),
        CartItemWidget(
          onChanged: (value) {
            setState(() {
              total += value;
            });
          },
          cost: 3,
          description: "12kg, Price",
          imagePath: AppMedia.bananImagePath,
          itemName: "Organic Bananas",
        ),
        CartItemWidget(
          onChanged: (value) {
            setState(() {
              total += value;
            });
          },
          cost: 2.99,
          description: "250gm, Price",
          imagePath: AppMedia.gingerImagePath,
          itemName: "Ginger",
        ),
      ],
    );
  }
}

class CartItemWidget extends StatefulWidget {
  final String imagePath;
  final String itemName;
  final String description;
  final double cost;
  Function(double value) onChanged;
  CartItemWidget({
    super.key,
    required this.imagePath,
    required this.cost,
    required this.description,
    required this.itemName,
    required this.onChanged,
  });

  @override
  State<StatefulWidget> createState() {
    return CartItemWidgetState();
  }
}

class CartItemWidgetState extends State<CartItemWidget> {
  int quantity = 1;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Column(
        children: [
          Row(
            spacing: 20,
            children: [
              Image.asset(widget.imagePath, width: 60, fit: BoxFit.cover),
              SizedBox(
                width: context.getScreenWidth() * 0.7,
                child: Column(
                  spacing: 10,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              widget.itemName,
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: "Gilroy",
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              widget.description,
                              style: TextStyle(
                                color: AppColor.greyColor,
                                fontSize: 14,
                                fontFamily: "Gilroy",
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                        Spacer(),
                        GestureDetector(child: Icon(Icons.cancel_outlined)),
                      ],
                    ),
                    Row(
                      spacing: 10,
                      children: [
                        IconButton.filled(
                          style: IconButton.styleFrom(
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                              side: BorderSide(color: AppColor.lightgreyColor),
                            ),
                          ),
                          onPressed: () {
                            if (quantity > 0) {
                              setState(() {
                                quantity--;
                              });
                              widget.onChanged(quantity * widget.cost);
                            }
                          },
                          icon: Icon(Icons.remove, color: AppColor.lightgreyColor),
                        ),
                        Text(
                          quantity.toString(),
                          style: TextStyle(
                            color: AppColor.blackColor,
                            fontSize: 18,
                            fontFamily: "Gilroy",
                            fontWeight: FontWeight.w500,
                          ),
                        ),

                        IconButton.filled(
                          style: IconButton.styleFrom(
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              side: BorderSide(color: AppColor.lightgreyColor),

                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          onPressed: () {
                            setState(() {
                              quantity++;
                            });
                            widget.onChanged(quantity * widget.cost);
                          },
                          icon: Icon(Icons.add, color: AppColor.mainColor),
                        ),
                        Spacer(),
                        Text(
                          "\$${(widget.cost * quantity).toStringAsFixed(2)}",
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: "Gilroy",
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 15),
          Divider(),
        ],
      ),
    );
  }
}

AppBar buildAppBar() {
  return AppBar(
    scrolledUnderElevation: 0,
    backgroundColor: Colors.white,
    bottom: PreferredSize(
      preferredSize: Size(double.infinity, 1),
      child: Divider(height: 0),
    ),
    centerTitle: true,
    title: Text(
      "My Cart",
      style: TextStyle(
        fontSize: 20,
        fontFamily: "Gilroy",
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}
