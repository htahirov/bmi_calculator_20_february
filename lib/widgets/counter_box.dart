import 'package:flutter/material.dart';

import '../constants/app_paddings.dart';
import '../constants/app_texts.dart';
import 'app_box.dart';
import 'circle_button.dart';
import 'label_text.dart';
import 'value_text.dart';

class CounterBox extends StatelessWidget {
  const CounterBox.weight({
    super.key,
    this.label = AppTexts.weight,
    required this.value,
    required this.onMinus,
    required this.onPlus,
  });

  const CounterBox.age({
    super.key,
    this.label = AppTexts.age,
    required this.value,
    required this.onMinus,
    required this.onPlus,
  });

  final String label;
  final int value;
  final void Function() onPlus;
  final void Function() onMinus;

  @override
  Widget build(BuildContext context) {
    return AppBox(
      child: Padding(
        padding: AppPaddings.v16,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            LabelText(labelText: label),
            ValueText(number: '$value'),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                CircleButton.plus(onTap: onPlus),
                const SizedBox(width: 16),
                CircleButton.minus(onTap: onMinus),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
