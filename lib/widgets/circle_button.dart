import 'package:bmi_calculator_app/constants/app_colors.dart';
import 'package:flutter/material.dart';

class CircleButton extends StatelessWidget {
  const CircleButton.plus({
    super.key,
    this.icon = Icons.add,
    required this.onTap,
  });

  const CircleButton.minus({
    super.key,
    this.icon = Icons.remove,
    required this.onTap,
  });

  final IconData icon;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        height: 44,
        width: 44,
        child: DecoratedBox(
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: AppColors.circleButtonColor,
          ),
          child: Icon(icon, color: AppColors.white, size: 30),
        ),
      ),
    );
  }
}
