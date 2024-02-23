import 'package:flutter/material.dart';
import 'package:wikiberry/presentation/shared/theme/app_colors.dart';
import 'package:wikiberry/presentation/shared/theme/app_icon.dart';

import '../../domain/berry.dart';
import '../shared/box.dart';

class BerryScreen extends StatelessWidget {
  final Berry berry;
  const BerryScreen(this.berry, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(berry.name), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Image.asset(berry.imageAsset),
            Box.s16,
            if (berry.alternativeNames.isNotEmpty) _InfoElement.string(
              title: "Alternative names",
              content: berry.alternativeNames.join(", "),
            ),
            if (berry.alternativeNames.isNotEmpty) Box.s16,
            _InfoElement.string(
              title: "Scientific name",
              content: berry.latinName,
              contentStyle: const TextStyle(fontStyle: FontStyle.italic),
            ),
            Box.s16,
            _InfoElement.widget(
              title: "Edible",
              child: berry.edible
                  ? const Icon(AppIcon.raspberry, color: AppColors.green)
                  : const Icon(AppIcon.skullCrossbones, color: AppColors.danger),
            ),
          ],
        ),
      ),
    );
  }
}

class _InfoElement extends StatelessWidget {
  final String title;
  final Widget? child;
  final String? content;
  final TextStyle? contentStyle;

  const _InfoElement._(this.title, this.child, this.content, this.contentStyle);

  factory _InfoElement.widget({required title, required child, contentStyle}) =>
      _InfoElement._(title, child, null, contentStyle);

  factory _InfoElement.string({required title, required content, contentStyle}) =>
      _InfoElement._(title, null, content, contentStyle);

  @override
  Widget build(BuildContext context) {
    return Flexible(child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("$title:  ", style: const TextStyle(
          color: AppColors.grey90,
          fontWeight: FontWeight.bold,
        )),
        if (content != null) Expanded(
          child: Text(content!,
            style: contentStyle == null
                ? const TextStyle(color: AppColors.grey90)
                : contentStyle?.copyWith(color: AppColors.grey90)),
        ),
        if (child != null) child!,
      ],
    ));
  }
}


