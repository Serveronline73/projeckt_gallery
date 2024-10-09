import 'package:flutter/material.dart';
import 'gallery/screens/gallery_screen.dart';
import 'gallery/screens/gallery_screen2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Gallery App",
      theme: ThemeData(
        scaffoldBackgroundColor:
            Colors.black, // Hintergrundfarbe für die gesamte App
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.black, // AppBar-Hintergrundfarbe
          foregroundColor: Colors.amber, // Textfarbe in der AppBar
        ),
      ),
      home: const GallerySelector(),
    );
  }
}

class GallerySelector extends StatelessWidget {
  const GallerySelector({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Galerie Auswahl")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const GalleryScreen()),
                );
              },
              child: const Text("Gallery 1"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const GalleryScreen2()),
                );
              },
              child: const Text("Gallery 2"),
            ),
          ],
        ),
      ),
    );
  }
}
