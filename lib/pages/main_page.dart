import 'dart:developer';

import 'package:flutter/material.dart';

import '../constants/app_colors.dart';
import '../constants/app_paddings.dart';
import '../constants/app_sizedboxes.dart';
import '../constants/app_text_styles.dart';
import '../constants/app_texts.dart';
import '../core/router/go.dart';
import '../core/router/pager.dart';
import '../widgets/all_gender_widget.dart';
import '../widgets/calculate_button.dart';
import '../widgets/counter_box.dart';
import '../widgets/height_box.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  double height = 174;
  int weight = 70;
  int age = 25;

  void _onHeightSlide(double v) {
    height = v;
    setState(() {});
  }

  void _onWeightPlus() {
    weight++;
    setState(() {});
  }

  void _onWeightMinus() {
    weight--;
    setState(() {});
  }

  void _onAgePlus() {
    age++;
    setState(() {});
  }

  void _onAgeMinus() {
    age--;
    setState(() {});
  }

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
              const AllGenderWidget(),
              AppSizedboxes.h20,
              HeightBox(height: height, onSlide: _onHeightSlide),
              AppSizedboxes.h20,
              Row(
                children: [
                  Expanded(
                    child: CounterBox.weight(
                      value: weight,
                      onPlus: _onWeightPlus,
                      onMinus: _onWeightMinus,
                    ),
                  ),
                  AppSizedboxes.w16,
                  Expanded(
                    child: CounterBox.age(
                      value: age,
                      onPlus: _onAgePlus,
                      onMinus: _onAgeMinus,
                    ),
                  ),
                ],
              ),
              const Spacer(),
              CalculateButton.calculate(
                onTap: () {
                  height = height / 100;
                  double result = weight / (height * height);
                  log('Result is $result');
                  // Go.to(context, Pager.result);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
