import 'package:flutter/material.dart';

import '../shared/box.dart';
import '../shared/theme/app_colors.dart';
import '../shared/theme/app_icon.dart';
import '../shared/theme/app_text.dart';
import 'widgets/berry_list.dart';

class CatalogScreen extends StatelessWidget {
  const CatalogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const _AppTitle(),
        centerTitle: true,
        toolbarHeight: 70,
      ),
      body: const BerryList(),
    );
  }
}

class _AppTitle extends StatelessWidget {
  const _AppTitle();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(AppIcon.raspberry, color: AppColors.primaryLight, size: 32),
        Box.s16,
        Text("Wikiberria", style: AppTextStyle.headlineLargePrimary),
        Box.s16,
        Box.s32, // for symmetry
      ],
    );
  }
}
