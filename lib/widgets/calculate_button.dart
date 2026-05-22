import 'package:flutter/material.dart';

import '../constants/app_colors.dart';
import '../constants/app_radiuses.dart';
import '../constants/app_text_styles.dart';
import '../constants/app_texts.dart';

class CalculateButton extends StatelessWidget {
  const CalculateButton.calculate({
    super.key,
    this.text = AppTexts.calculate,
    required this.onTap,
  });

  const CalculateButton.recalculate({
    super.key,
    this.text = AppTexts.reCalculate,
    required this.onTap,
  });

  final void Function() onTap;
  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        height: 60,
        width: double.infinity,
        child: DecoratedBox(
          decoration: const BoxDecoration(
            color: AppColors.primary,
            borderRadius: AppRadiuses.c10,
          ),
          child: Center(
            child: Text(text, style: AppTextStyles.calculateButtonTextStyle),
          ),
        ),
      ),
    );
  }
}
