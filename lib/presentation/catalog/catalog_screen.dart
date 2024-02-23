import 'package:flutter/material.dart';

import '../shared/box.dart';
import '../shared/theme/app_colors.dart';
import '../shared/theme/app_icon.dart';
import 'widgets/berry_list.dart';

class CatalogScreen extends StatelessWidget {
  const CatalogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const _AppTitle(),
          centerTitle: true,
      ),
      body: const BerryList(),
    );
  }
}

class _AppTitle extends StatelessWidget {
  const _AppTitle();

  @override
  Widget build(BuildContext context) {
    return const Flexible(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(AppIcon.raspberry, color: AppColors.primaryLight, size: 30),
          Box.s16,
          Text("Wikiberry", style: TextStyle(
            color: AppColors.primary,
            fontWeight: FontWeight.w400,
            fontSize: 30,
          )),
        ],
      ),
    );
  }
}
