import 'package:flutter/material.dart';

import '../constants/app_colors.dart';
import '../constants/app_paddings.dart';
import '../constants/app_texts.dart';
import 'app_box.dart';
import 'label_text.dart';
import 'value_text.dart';

class HeightBox extends StatelessWidget {
  const HeightBox({super.key, required this.height, this.onSlide});

  final double height;
  final void Function(double)? onSlide;

  @override
  Widget build(BuildContext context) {
    return AppBox(
      child: Padding(
        padding: AppPaddings.v16,
        child: Column(
          children: [
            const LabelText(labelText: AppTexts.height),
            ValueText(number: height.toStringAsFixed(0)),
            Slider(
              min: 120,
              max: 210,
              value: height,
              activeColor: AppColors.primary,
              onChanged: onSlide,
            ),
          ],
        ),
      ),
    );
  }
}
