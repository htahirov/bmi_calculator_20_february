import 'package:flutter/material.dart';

import '../constants/app_colors.dart';
import '../constants/app_radiuses.dart';

class AppBox extends StatelessWidget {
  const AppBox({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: DecoratedBox(
        decoration: const BoxDecoration(
          color: AppColors.boxColor,
          borderRadius: AppRadiuses.c10,
        ),
        child: child,
      ),
    );
  }
}
