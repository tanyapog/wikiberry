import 'package:flutter/material.dart';

import 'catalog_screen.dart';

void main() {
  runApp(const WikiBerryApp());
}

class WikiBerryApp extends StatelessWidget {
  const WikiBerryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Wikiberry",
      home: CatalogScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
