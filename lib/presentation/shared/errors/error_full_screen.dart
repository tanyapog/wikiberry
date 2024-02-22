import 'package:flutter/material.dart';

import '../box.dart';
import '../theme/app_colors.dart';

class ErrorFullscreen extends StatelessWidget {
  final String? errorMessage;

  const ErrorFullscreen({super.key, required this.errorMessage});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Scaffold(
        body: Center(
          child: Column(
            children: [
              Box.s160,
              const Icon(
                Icons.error_outline_rounded,
                color: AppColors.error,
                size: 160,
              ),
              Box.s24,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Text(errorMessage ?? '',
                  style: const TextStyle(color: AppColors.grey90),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}