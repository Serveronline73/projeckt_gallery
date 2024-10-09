import 'package:flutter/material.dart';
import 'gallery/screens/gallery_screen.dart';

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
      home: const GalleryScreen(),
    );
  }
}
