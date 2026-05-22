import 'package:flutter/material.dart';

import '../constants/app_text_styles.dart';

class LabelText extends StatelessWidget {
  const LabelText({super.key, required this.labelText});

  final String labelText;

  @override
  Widget build(BuildContext context) {
    return Text(labelText, style: AppTextStyles.genderTitleStyle);
  }
}
