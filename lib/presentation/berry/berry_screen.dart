import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:wikiberria/presentation/shared/theme/app_colors.dart';
import 'package:wikiberria/presentation/shared/theme/app_icon.dart';

import '../../domain/berry.dart';
import '../shared/box.dart';
import '../shared/theme/app_text.dart';

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
              contentStyle: AppTextStyle.titleMediumGray90.copyWith(fontStyle: FontStyle.italic),
            ),
            Box.s16,
            _InfoElement.widget(
              title: "Edible",
              child: berry.edible
                  ? const Icon(AppIcon.raspberry, color: AppColors.green)
                  : const Icon(AppIcon.skullCrossbones, color: AppColors.danger),
            ),
            Box.s16,
            if (berry.wikiUrl != null) WikiUrl(url: berry.wikiUrl!),
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
        Text(
          "$title:  ",
          style: AppTextStyle.titleMediumGray90.copyWith(fontWeight: FontWeight.bold),
        ),
        if (content != null) Expanded(
          child: Text(content!, style: contentStyle ?? AppTextStyle.titleMediumGray90)
        ),
        if (child != null) child!,
      ],
    ));
  }
}

class WikiUrl extends StatelessWidget {
  final String url;
  const WikiUrl({super.key, required this.url});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional.centerStart,
      child: InkWell(
        onTap: () async {
          if (!await launchUrl(Uri.parse(url), mode: LaunchMode.externalApplication)) {
            throw Exception('Sorry, could not launch $url');
          }
        },
        child: Text('Read more on Wikipedia...', style: AppTextStyle.titleMediumUrl),
      ),
    );
  }
}

