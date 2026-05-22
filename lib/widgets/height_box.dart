import 'package:flutter/material.dart';

import '../constants/app_colors.dart';
import '../constants/app_paddings.dart';
import '../constants/app_texts.dart';
import 'app_box.dart';
import 'label_text.dart';
import 'value_text.dart';

class HeightBox extends StatelessWidget {
  const HeightBox({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBox(
      child: Padding(
        padding: AppPaddings.v16,
        child: Column(
          children: [
            const LabelText(labelText: AppTexts.height),
            const ValueText(number: '177'),
            Slider(
              min: 120,
              max: 210,
              value: 177,
              activeColor: AppColors.primary,
              onChanged: (v) {},
            ),
          ],
        ),
      ),
    );
  }
}
