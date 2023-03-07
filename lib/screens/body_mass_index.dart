import 'package:bmi/providers/bmi_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../calculate_bmi.dart';
import '../widgets/bmi_result_card.dart';

class BodyMassIndex extends StatefulWidget {
  const BodyMassIndex({super.key});

  @override
  State<BodyMassIndex> createState() => _BodyMassIndexState();
}

class _BodyMassIndexState extends State<BodyMassIndex> {
  String get getBMI => bmi(result);

  String get getBMIRange => bmiRange(getBMI);

  Color get getTextColor => textColor(getBMI);

  String get getBMIResult => bmiResult(getBMI);

  late double result;
  late double height;
  late double weight;
  @override
  void initState() {
    height = Provider.of<BMIprovider>(context, listen: false).height;
    weight = Provider.of<BMIprovider>(context, listen: false).weight;
    result = calculateBMI(weight, height);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Color color = const Color(0xff111324);
    return Scaffold(
      backgroundColor: color,
      appBar: AppBar(
        title: const Text('Body Mass Index'),
        leading: Container(),
        centerTitle: true,
        backgroundColor: color,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Your Result',
              style: TextStyle(fontSize: 35, color: Colors.white),
            ),
            const SizedBox(height: 15),
            BMIResultCard(
              bmi: getBMI,
              textColor: getTextColor,
              result: result,
              bmiRange: getBMIRange,
              bmiResult: getBMIResult,
            ),
          ],
        ),
      ),
      bottomNavigationBar: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.red,
          padding: const EdgeInsets.symmetric(vertical: 20),
        ),
        onPressed: () {
          Navigator.of(context).pop();
        },
        child: const Text("RE-CALCULATE YOUR BMI"),
      ),
    );
  }
}
