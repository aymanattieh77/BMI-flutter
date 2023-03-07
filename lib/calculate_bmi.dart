import 'package:flutter/material.dart';

double calculateBMI(double weight, double heightCm) {
  //weight (kg) ÷ height2 (meters)
  double heightM = heightCm / 100;
  double result = weight / (heightM * heightM);

  return result;
}

String bmi(double result) {
  if (result <= 18.4) {
    return 'Underweight';
  } else if (result >= 18.5 && result <= 24.9) {
    return 'Normal';
  } else if (result >= 25.0 && result <= 39.9) {
    return 'Overweight';
  } else if (result >= 40) {
    return 'Obese';
  } else {
    return 'unknown';
  }
}

String bmiRange(String bmi) {
  switch (bmi) {
    case 'Underweight':
      return '<=18.4 Kg/m2 ';
    case 'Normal':
      return '18.5 - 24.9 Kg/m2 ';
    case 'Overweight':
      return '25 - 39.9 Kg/m2';
    case 'Obese':
      return '>= 40 Kg/m2';
    default:
      return '>= 40 Kg/m2';
  }
}

Color textColor(String bmi) {
  switch (bmi) {
    case 'Underweight':
      return Colors.yellow;
    case 'Normal':
      return Colors.green;
    case 'Overweight':
      return Colors.orange;
    case 'Obese':
      return Colors.red;
    default:
      return Colors.white;
  }
}

String bmiResult(String bmi) {
  switch (bmi) {
    case 'Underweight':
      return 'You\'re in the underweight range.';
    case 'Normal':
      return "you're in the healthy weight range.";
    case 'Overweight':
      return "you're in the overweight range.";
    case 'Obese':
      return " you're in the obese range";
    default:
      return "you're in the healthy weight range.";
  }
}
