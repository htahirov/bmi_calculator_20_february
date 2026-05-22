import 'package:bmi_calculator_app/constants/app_text_styles.dart';
import 'package:flutter/material.dart';

class ValueText extends StatelessWidget {
  const ValueText({super.key, required this.number, this.fontSize = 44});

  final String number;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      number,
      style: AppTextStyles.valueTextStyle.copyWith(fontSize: fontSize),
    );
  }
}
