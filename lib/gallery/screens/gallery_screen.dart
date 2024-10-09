import 'package:flutter/material.dart';
import 'detail_screen.dart';
import '../data/gallery_data.dart';
import '../../profile/about_me_screen.dart';
import 'gallery_screen2.dart';

class GalleryScreen extends StatelessWidget {
  const GalleryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Gallery"),
        centerTitle: true,
      ),
      body: Padding(
        padding:
            const EdgeInsets.all(8.0), // Abstand Rand um das Gesamte Raster
        child: GridView.builder(
          itemCount: GalleryData.imagePaths.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // 2 Spalten werden angezeigt
            crossAxisSpacing: 8.0, // Abstand zwischen den Bildern horizontal
            mainAxisSpacing: 8.0, // Abstand zwischen den Bildern vertikal
          ),
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailScreen(
                      imagePath: GalleryData.imagePaths[
                          index], // Greift auf das spezifische Bild zu
                      caption: GalleryData.imageCaptions[
                          index], // Greift auf das spezifische Bild Unterschrift zu
                      detailText: GalleryData.detailTexts[
                          index], // Greift auf das spezifische Text zu
                    ),
                  ),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.amber[700],
                  borderRadius: BorderRadius.circular(
                      8), // Rundet die Ecken eines Containers ab
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 171,
                        width: 205,
                        child: Image.asset(
                          GalleryData.imagePaths[index],
                          fit: BoxFit
                              .cover, // Bild füllt den gesamten verfügbaren Platz aus
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        GalleryData.imageCaptions[index],
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.photo_album),
            label: "Gallerie 1", // Beschriftung für die erste Galerie
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.photo_album),
            label: "Gallerie 2", // Hinzugefügte Beschriftung für das neue Icon
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Über mich",
          ),
        ],
        onTap: (index) {
          if (index == 0) {
            // Bei Klick auf "Bilder" zeige den ersten DetailScreen (z.B. das erste Bild)
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailScreen(
                  imagePath: GalleryData.imagePaths[0], // Erster Bildpfad
                  caption:
                      GalleryData.imageCaptions[0], // Erster Bildunterschrift
                  detailText: GalleryData.detailTexts[0], // Erster Detailtext
                ),
              ),
            );
          } else if (index == 1) {
            // Bei Klick auf "Bilder 2"
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                      const GalleryScreen2()), // Navigiere zur zweiten Galerie
            );
          } else if (index == 2) {
            // Bei Klick auf "Über mich"
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const AboutMeScreen()),
            );
          }
        },
      ),
    );
  }
}
