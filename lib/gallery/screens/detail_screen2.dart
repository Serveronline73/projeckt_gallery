// detail_screen2.dart
//Deatailansicht 2

import 'package:flutter/material.dart';

class DetailScreen2 extends StatelessWidget {
  final String imagePath;
  final String caption;
  final String detailTexts;

  const DetailScreen2(
      {super.key,
      required this.imagePath,
      required this.caption,
      required this.detailTexts});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Detailansicht"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(imagePath, fit: BoxFit.cover),
              const SizedBox(height: 16),
              Text(
                caption,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 16, color: Colors.white),
              ),
            ],
          ),
        ));
  }
}
