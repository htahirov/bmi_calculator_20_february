import 'package:flutter/material.dart';

import '../constants/app_colors.dart';
import '../constants/app_radiuses.dart';

class AppBox extends StatelessWidget {
  const AppBox({
    super.key,
    required this.child,
    this.backgroundColor = AppColors.boxColor,
  });

  final Widget child;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: AppRadiuses.c10,
        ),
        child: child,
      ),
    );
  }
}
