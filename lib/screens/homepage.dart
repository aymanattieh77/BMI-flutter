import 'package:bmi/screens/body_mass_index.dart';
import 'package:bmi/providers/bmi_provider.dart';
import 'package:bmi/widgets/card_view.dart';
import 'package:bmi/widgets/choose_gender.dart';
import 'package:bmi/widgets/choose_height.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color color = const Color(0xff111324);

    return Scaffold(
      backgroundColor: color,
      appBar: AppBar(
        backgroundColor: color,
        title: const Text('BMI CALCULATOR'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        child: Column(
          children: [
            Consumer<BMIprovider>(builder: (ctx, value, _) {
              return Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: ChooseGender(
                        gender: 'MALE',
                        color: value.isMale
                            ? const Color.fromARGB(255, 40, 39, 68)
                            : const Color(0xff1b1a2e),
                        icon: Icons.male,
                      ),
                    ),
                    const SizedBox(width: 15),
                    Expanded(
                      child: ChooseGender(
                        gender: 'FEMALE',
                        color: !value.isMale
                            ? const Color.fromARGB(255, 40, 39, 68)
                            : const Color(0xff1b1a2e),
                        icon: Icons.female,
                      ),
                    ),
                  ],
                ),
              );
            }),
            const SizedBox(height: 10),
            const Expanded(child: ChooseHeight()),
            const SizedBox(height: 10),
            Expanded(
              child: Row(
                children: const [
                  Expanded(
                    child: CardView(label: 'WEIGHT'),
                  ),
                  Expanded(
                      child: CardView(
                    label: 'AGE',
                  )),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.red,
          padding: const EdgeInsets.symmetric(vertical: 15),
        ),
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (ctx) => const BodyMassIndex()));
        },
        child: const Text("CALCULATE"),
      ),
    );
  }
}
