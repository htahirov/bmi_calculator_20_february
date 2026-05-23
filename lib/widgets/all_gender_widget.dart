import 'package:flutter/material.dart';

import '../constants/app_colors.dart';
import '../constants/app_sizedboxes.dart';
import '../core/enums/gender.dart';
import 'gender_box.dart';

class AllGenderWidget extends StatefulWidget {
  const AllGenderWidget({super.key});

  @override
  State<AllGenderWidget> createState() => _AllGenderWidgetState();
}

class _AllGenderWidgetState extends State<AllGenderWidget> { 
  Gender selectedGender = Gender.male;

  void _onTapMaleBox() {
    selectedGender = Gender.male;
    setState(() {});
  }

  void _onTapFemaleBox() {
    selectedGender = Gender.female;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _Box(
          gender: Gender.male,
          selectedGender: selectedGender,
          onTap: _onTapMaleBox,
        ),
        AppSizedboxes.w16,
        _Box(
          gender: Gender.female,
          selectedGender: selectedGender,
          onTap: _onTapFemaleBox,
        ),
      ],
    );
  }
}

class _Box extends StatelessWidget {
  const _Box({
    required this.onTap,
    required this.selectedGender,
    required this.gender,
  });

  final void Function() onTap;
  final Gender selectedGender;
  final Gender gender;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: GenderBox(
          gender: gender,
          backgroundColor: selectedGender == gender
              ? AppColors.primary
              : AppColors.boxColor,
        ),
      ),
    );
  }
}
