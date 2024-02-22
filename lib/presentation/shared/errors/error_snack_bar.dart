import 'package:flutter/material.dart';

import '../box.dart';
import '../theme/app_colors.dart';

class ErrorSnackBar extends SnackBar {
  final String message;
  ErrorSnackBar({super.key, required this.message}) : super(
    duration: const Duration(seconds: 5),
    content: Row(
      children: [
        const Icon(Icons.warning, color: AppColors.error),
        Box.s8,
        Flexible(child: Text(message)),
      ],
    ),
  );
}