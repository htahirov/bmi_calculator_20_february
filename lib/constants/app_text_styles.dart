import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppTextStyles {
  AppTextStyles._();

  static const appbarTitleStyle = TextStyle(
    fontSize: 28,
    color: Colors.white,
    fontWeight: FontWeight.w600,
  );

  static const genderTitleStyle = TextStyle(color: Colors.white, fontSize: 18);

  static const valueTextStyle = TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.w900,
  );

  static const calculateButtonTextStyle = TextStyle(
    fontSize: 22,
    color: Colors.white,
    fontWeight: FontWeight.bold,
  );

  static const resultLabeTextStyle = TextStyle(
    color: AppColors.resultLabelTextColor,
    fontSize: 35,
    fontWeight: FontWeight.w500,
  );
  static final resultTextStyle = valueTextStyle.copyWith(fontSize: 50);

  static const resultCommentTextStyle = TextStyle(
    fontSize: 16,
    color: AppColors.white,
  );
}
