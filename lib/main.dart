import 'package:flutter/material.dart';

import 'presentation/catalog/catalog_screen.dart';

void main() {
  runApp(const WikiberriaApp());
}

class WikiberriaApp extends StatelessWidget {
  const WikiberriaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Wikiberria",
      home: CatalogScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
