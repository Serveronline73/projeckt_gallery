// about_me_screen.dart

import 'package:flutter/material.dart';
import '../gallery/screens/gallery_screen.dart';

class AboutMeScreen extends StatelessWidget {
  const AboutMeScreen({super.key});

  void _showSnackbar(BuildContext context) {
    const snackBar = SnackBar(
      content: Text("Willkommen zur Hauptgalerie!"),
      duration: Duration(seconds: 2),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Über mich"),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipOval(
                  child: Image.asset(
                    "asset/kaya.jpeg",
                    height: 500,
                    width: 500,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 16),
                const Text(
                  "Mein Name ist Kaya Müller, ein Fotograf im Alter von 32 Jahren, der die Welt durch die Linse entdeckt. Mit einem Hintergrund in der visuellen Kunst und jahrelanger Erfahrung in der Fotografie habe ich einen Blick für die Schönheit im Alltäglichen entwickelt. Meine Spezialität liegt in der Sport- und Naturfotografie, wo ich das Spiel von Licht und Schatten einfange, um emotionale und aussagekräftige Bilder zu schaffen.\n\nIch glaube daran, dass jeder Moment einzigartig ist und seine eigene Geschichte erzählt. In meinen Arbeiten strebe ich danach, diese Geschichten visuell zu interpretieren und sie durch kreative Kompositionen und Nuancen zum Leben zu erwecken. Meine fotografische Reise hat mich durch verschiedene Länder geführt, wo ich die Vielfalt der Kulturen und Landschaften festhalte, immer auf der Suche nach neuen Perspektiven und Herausforderungen.\n\nMein Anspruch ist es, mit meinen Bildern nicht nur zu dokumentieren, sondern auch zu inspirieren und zu berühren. Jeder Auftrag und jedes Projekt ist für mich eine Möglichkeit, meine Leidenschaft und mein Können zu zeigen und eine Verbindung zwischen dem Betrachter und dem Bild herzustellen.",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ],
            ),
          ),
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
          if (index == 0) {
            _showSnackbar(context); // Snackbar anzeigen
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const GalleryScreen()),
            );
          }
        },
      ),
    );
  }
}
