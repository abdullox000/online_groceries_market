import 'package:flutter/material.dart';
import 'package:online_groceries_market/utils/app_media.dart';

class ProductDetailPage extends StatefulWidget {
  const ProductDetailPage({super.key});

  @override
  State<ProductDetailPage> createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  int quantity = 1;
  bool showDetails = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: BackButton(color: Colors.black),
        actions: [
          IconButton(
            icon: const Icon(Icons.share, color: Colors.black),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Image.asset(AppMedia.olmaImagePath, width: 120, height: 100, fit: BoxFit.cover,),
          ),

          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              "Naturel Red Apple",
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                const Text("1kg, Price"),
                const Spacer(),
                IconButton(
                  icon: const Icon(Icons.remove),
                  onPressed: () {
                    if (quantity > 1) {
                      setState(() {
                        quantity--;
                      });
                    }
                  },
                ),
                Text(quantity.toString()),
                IconButton(
                  icon: const Icon(Icons.add),
                  onPressed: () {
                    setState(() {
                      quantity++;
                    });
                  },
                ),
                const Text(
                  "\$4.99",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ],
            ),
          ),
          const Divider(),
          ListTile(
            title: const Text("Product Detail", style: TextStyle(fontWeight: FontWeight.bold)),
            trailing: IconButton(
              icon: Icon(showDetails ? Icons.expand_less : Icons.expand_more),
              onPressed: () {
                setState(() {
                  showDetails = !showDetails;
                });
              },
            ),
          ),
          if (showDetails)
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                "Apples are nutritious. Apples may be good for weight loss. "
                "Apples may be good for your heart. As part of a healthful and varied diet.",
              ),
            ),
          ListTile(
            title: const Text("Nutritions"),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Text("100gr"),
                ),
                const Icon(Icons.arrow_forward_ios, size: 16),
              ],
            ),
          ),
          ListTile(
            title: const Text("Review"),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: List.generate(5, (index) => const Icon(Icons.star, color: Colors.orange)),
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                minimumSize: const Size(double.infinity, 50),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
              ),
              onPressed: () {
                debugPrint("qoshildi");
              },
              child: const Text("Add To Basket", style: TextStyle(fontSize: 18)),
            ),
          ),
        ],
      ),
    );
  }
}
