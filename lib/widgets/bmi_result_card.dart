import 'package:flutter/material.dart';

class BMIResultCard extends StatelessWidget {
  const BMIResultCard({
    Key? key,
    required this.bmi,
    required this.textColor,
    required this.result,
    required this.bmiRange,
    required this.bmiResult,
  }) : super(key: key);

  final String bmi;
  final Color textColor;
  final double result;
  final String bmiRange;
  final String bmiResult;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 30),
      decoration: BoxDecoration(
        color: const Color(0xff1b1a2e),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            bmi,
            style: TextStyle(fontSize: 20, color: textColor),
          ),
          Text(
            result.toStringAsFixed(1),
            style: const TextStyle(fontSize: 50, color: Colors.white),
          ),
          Text(
            '$bmi BMI range',
            style: const TextStyle(fontSize: 20, color: Colors.grey),
          ),
          Text(
            bmiRange,
            style: const TextStyle(fontSize: 16, color: Colors.white),
          ),
          const SizedBox(height: 20),
          Text(
            bmiResult,
            maxLines: 1,
            softWrap: true,
            style: TextStyle(fontSize: 16, color: textColor),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
