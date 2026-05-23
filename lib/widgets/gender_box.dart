import 'package:flutter/material.dart';

import '../constants/app_colors.dart';
import '../constants/app_paddings.dart';
import '../constants/app_sizedboxes.dart';
import '../constants/app_text_styles.dart';
import '../core/enums/gender.dart';
import 'app_box.dart';

class GenderBox extends StatelessWidget {
  const GenderBox({
    super.key,
    required this.backgroundColor,
    required this.gender,
  });

  final Gender gender;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return AppBox(
      backgroundColor: backgroundColor,
      child: Padding(
        padding: AppPaddings.a16,
        child: Center(
          child: Column(
            children: [
              Icon(gender.icon, color: AppColors.white, size: 90),
              AppSizedboxes.h8,
              Text(gender.text, style: AppTextStyles.genderTitleStyle),
            ],
          ),
        ),
      ),
    );
  }
}
