import 'package:bmi_calculator_app/constants/app_colors.dart';
import 'package:bmi_calculator_app/constants/app_paddings.dart';
import 'package:bmi_calculator_app/constants/app_sizedboxes.dart';
import 'package:bmi_calculator_app/constants/app_text_styles.dart';
import 'package:bmi_calculator_app/widgets/app_box.dart';
import 'package:flutter/material.dart';

class GenderBox extends StatelessWidget {
  const GenderBox({super.key, required this.icon, required this.text});
  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return AppBox(
      child: Padding(
        padding: AppPaddings.a16,
        child: Center(
          child: Column(
            children: [
              Icon(icon, color: AppColors.white, size: 90),
              AppSizedboxes.h8,
              Text(text, style: AppTextStyles.genderTitleStyle),
            ],
          ),
        ),
      ),
    );
  }
}
