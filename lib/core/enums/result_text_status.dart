enum ResultTextStatus {
  underweight(
    status: 'Underweight',
    description:
        'Body weight is below the recommended range for optimal health.',
    color: 0xffF5ED0A,
  ),
  normal(
    status: 'Normal',
    description:
        'Weight is in proportion to height, representing the lowest statistical risk for developing weight-related chronic illnesses.',
    color: 0xff0AF558,
  ),
  overweight(
    status: 'Overweight',
    description:
        'Body weight exceeds the ideal range for height, which may increase stress on joints and muscles.',
    color: 0xffFA5F55,
  ),
  obese(
    status: 'Obese',
    description:
        'High excess body fat significantly impacts physical health and mobility.',
    color: 0xff880808,
  );

  const ResultTextStatus({
    required this.status,
    required this.description,
    required this.color,
  });

  final String status;
  final String description;
  final int color;

  static ResultTextStatus findResult(double result) {
    if (result < 18.5) {
      return ResultTextStatus.underweight;
    } else if (result >= 18.5 && result <= 24.9) {
      return ResultTextStatus.normal;
    } else if (result > 24.9 && result < 30) {
      return ResultTextStatus.overweight;
    }
    return ResultTextStatus.obese;
  }
}
