import 'package:flutter/material.dart';

import '../../constants/app_texts.dart';

enum Gender {
  male(icon: Icons.male, text: AppTexts.male),
  female(icon: Icons.female, text: AppTexts.female);

  const Gender({required this.icon, required this.text});

  final IconData icon;
  final String text;
}
