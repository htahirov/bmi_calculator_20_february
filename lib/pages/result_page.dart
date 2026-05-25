import 'package:flutter/material.dart';

import '../constants/app_colors.dart';
import '../constants/app_paddings.dart';
import '../constants/app_sizedboxes.dart';
import '../constants/app_text_styles.dart';
import '../constants/app_texts.dart';
import '../core/enums/result_text_status.dart';
import '../core/router/go.dart';
import '../widgets/app_box.dart';
import '../widgets/calculate_button.dart';
import '../widgets/value_text.dart';

class ResultPage extends StatefulWidget {
  const ResultPage({super.key, required this.result});

  final double result;

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  late final ResultTextStatus _resultTextStatus;

  @override
  void initState() {
    _resultTextStatus = ResultTextStatus.findResult(widget.result);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.scaffoldBackgroundColor,
        appBar: AppBar(
          centerTitle: true,
          title: const Text(AppTexts.appName),
          titleTextStyle: AppTextStyles.appbarTitleStyle,
          backgroundColor: AppColors.transparent,
          foregroundColor: AppColors.white,
          automaticallyImplyLeading: false,
          leading: IconButton(
            icon: const Icon(Icons.clear),
            onPressed: () => Go.back(context),
          ),
        ),

        body: Center(
          child: Padding(
            padding: AppPaddings.h16,
            child: Column(
              children: [
                Text(AppTexts.resultText, style: AppTextStyles.resultTextStyle),
                AppSizedboxes.h16,
                SizedBox(
                  height: 480,
                  child: AppBox(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          _resultTextStatus.status,
                          style: AppTextStyles.resultLabeTextStyle.copyWith(
                            color: Color(_resultTextStatus.color),
                          ),
                        ),
                        ValueText(
                          number: widget.result.toStringAsFixed(1),
                          fontSize: 70,
                        ),
                        Padding(
                          padding: AppPaddings.h16,
                          child: Text(
                            _resultTextStatus.description,
                            textAlign: TextAlign.center,
                            style: AppTextStyles.resultCommentTextStyle,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const Spacer(),
                CalculateButton.recalculate(onTap: () => Go.back(context)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
