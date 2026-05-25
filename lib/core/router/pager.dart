import 'package:flutter/material.dart';

import '../../pages/main_page.dart';
import '../../pages/result_page.dart';

class Pager {
  Pager._();

  static const main = MainPage();

  static Widget result(double result) => ResultPage(result: result);
}
