import 'package:bmi_calculator_app/core/router/go.dart';
import 'package:flutter/material.dart';

import '../constants/app_colors.dart';
import '../constants/app_text_styles.dart';
import '../constants/app_texts.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBackgroundColor,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(AppTexts.appName),
        backgroundColor: AppColors.transparent,
        foregroundColor: AppColors.white,
        titleTextStyle: AppTextStyles.appbarTitleStyle,
        automaticallyImplyLeading: false,
        leading: IconButton(icon: const Icon(Icons.clear),onPressed: () => Go.back(context)),
      ),
      body: Container(),
    );
  }
}
