import 'package:flutter/material.dart';

import '../../../domain/berry.dart';
import '../../shared/theme/app_colors.dart';
import '../../shared/theme/app_icon.dart';

class BerryCard extends StatelessWidget {
  final Berry berry;
  const BerryCard(this.berry, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _BerryImage(asset: berry.imageAsset),
        _CardTitle(berry: berry),
      ],
    );
  }
}

class _BerryImage extends StatelessWidget {
  final String asset;
  const _BerryImage({required this.asset});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: Image(
        image: AssetImage(asset),
        fit: BoxFit.cover, // use this
      ),
    );
  }
}

class _CardTitle extends StatelessWidget {
  final Berry berry;
  const _CardTitle({required this.berry});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Row(
          children: [
            Text(
              berry.name,
              style: const TextStyle(color: AppColors.grey80, fontWeight: FontWeight.bold),
              overflow: TextOverflow.fade,
            ),
            const Spacer(),
            berry.edible
                ? Container()
                : const Icon(AppIcon.skullCrossbones, color: AppColors.danger),
          ],
        ),
      ),
    );
  }
}

