import 'package:flutter/material.dart';

class NumberScreen extends StatelessWidget{
  const NumberScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Icon(Icons.arrow_back_ios),
          SizedBox(height: 70,)
        ],
      ),
    );
  }

}