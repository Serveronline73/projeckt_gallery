// GalleryScreen2
// Zweiter Screen für Car Detailing

import 'package:flutter/material.dart';
import 'package:projeckt_gallery/gallery/data/gallery_data2.dart';

import 'detail_screen2.dart';

class GalleryScreen2 extends StatelessWidget {
  const GalleryScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Gallery 2"),
      ),
      body: GridView.builder(
        itemCount: GalleryData2.imagePaths.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 8.0,
        ),
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailScreen2(
                    imagePath: GalleryData2.imagePaths[index],
                    caption: GalleryData2.imageCaptions[index],
                  ),
                ),
              );
            },
            child: Image.asset(
              GalleryData2.imagePaths[index],
              fit: BoxFit.cover,
            ),
          );
        },
      ),
    );
  }
}
