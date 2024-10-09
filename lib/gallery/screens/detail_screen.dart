import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final String imagePath; // Neue Variable für den spezifischen Bildes

  final String caption; // Neue Variable für den Bild Unterschrift

  final String detailText; // Neue Variable für den spezifischen Text

  const DetailScreen({
    super.key,
    required this.imagePath, // Hinzufügen des spezifischen Bildes
    required this.caption, // Hinzufügen des spezifischen Bild Unterschrift
    required this.detailText, // Hinzufügen des spezifischen Texts
  });

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
            Image.asset(imagePath),
            const SizedBox(height: 16),
            Text(
              caption,
              style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.amber),
            ),
            const SizedBox(height: 16),
            Text(
              detailText, // Den spezifischen Text anzeigen
              style: const TextStyle(fontSize: 16, color: Colors.grey),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
