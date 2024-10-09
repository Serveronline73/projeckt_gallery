import 'package:flutter/material.dart';
import 'detail_screen.dart';
import '../data/gallery_data.dart';
import '../../profile/about_me_screen.dart';

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
            crossAxisSpacing: 8.0, //Abstand zwischen den Bildern horizontal
            mainAxisSpacing: 8.0, //Abstand zwischen den Bildern Vertical
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
                  // Definiert das aussehen des Containers
                  color: Colors.amber[700],
                  borderRadius: BorderRadius.circular(
                      8), // Rundet die Ecken eines Containers ab
                ),
                child: ClipRRect(
                  // Schränkt den Inhalt des Containers in eine abgerundete Form ein (gleicher Radius wie oben).

                  borderRadius: BorderRadius.circular(8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 171, width: 205,
                        //Der Image.asset-Widget wird erweitert
                        child: Image.asset(GalleryData.imagePaths[index],
                            fit: BoxFit
                                .cover //Sorgt dafür, dass das Bild den gesamten verfügbaren Platz ausfüllt.
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
            label: "Bilder",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Über mich",
          ),
        ],
        onTap: (index) {
          if (index == 1) {
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
