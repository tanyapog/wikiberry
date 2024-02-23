import 'package:flutter/material.dart';

import '../../../domain/berry.dart';
import '../../shared/errors/error_full_screen.dart';
import 'berry_card.dart';

class BerryList extends StatefulWidget {
  const BerryList({super.key});

  @override
  State<BerryList> createState() => _BerryListState();
}

class _BerryListState extends State<BerryList> {
  final loadBerriesFuture = loadBerries;

  @override
  Widget build(BuildContext context) {

    return FutureBuilder<List<Berry>>(
      future: loadBerriesFuture.call(context),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return ErrorFullscreen(errorMessage: snapshot.error.toString());
        }
        if (snapshot.hasData) {
          final berries = snapshot.data ?? [];
          return GridView.builder(
            itemCount: berries.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: (1 / 1.2),
              crossAxisCount: 2,
              crossAxisSpacing: 5,
            ),
            itemBuilder: (context, i) => BerryCard(berries[i]),
          );
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
