import 'package:flutter/material.dart';

import '../constants/app_colors.dart';
import '../constants/app_paddings.dart';
import '../constants/app_sizedboxes.dart';
import '../constants/app_text_styles.dart';
import '../constants/app_texts.dart';
import '../core/router/go.dart';
import '../core/router/pager.dart';
import '../widgets/calculate_button.dart';
import '../widgets/counter_box.dart';
import '../widgets/gender_box.dart';
import '../widgets/height_box.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBackgroundColor,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(AppTexts.appName),
        backgroundColor: AppColors.transparent,
        titleTextStyle: AppTextStyles.appbarTitleStyle,
      ),
      body: SafeArea(
        child: Padding(
          padding: AppPaddings.h16,
          child: Column(
            children: [
              const Row(
                children: [
                  Expanded(
                    child: GenderBox(icon: Icons.male, text: AppTexts.male),
                  ),
                  AppSizedboxes.w16,
                  Expanded(
                    child: GenderBox(icon: Icons.female, text: AppTexts.female),
                  ),
                ],
              ),
              AppSizedboxes.h20,
              const HeightBox(),
              AppSizedboxes.h20,
              Row(
                children: [
                  Expanded(
                    child: CounterBox.weight(
                      value: '70',
                      onPlus: () {},
                      onMinus: () {},
                    ),
                  ),
                  AppSizedboxes.w16,
                  Expanded(
                    child: CounterBox.age(
                      value: '26',
                      onPlus: () {},
                      onMinus: () {},
                    ),
                  ),
                ],
              ),
              const Spacer(),
              CalculateButton.calculate(
                onTap: () => Go.to(context, Pager.result),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
