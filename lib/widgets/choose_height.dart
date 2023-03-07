// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bmi/providers/bmi_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ChooseHeight extends StatelessWidget {
  const ChooseHeight({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<BMIprovider>(builder: (ctx, value, _) {
      return Container(
        padding: const EdgeInsets.all(12.0),
        decoration: BoxDecoration(
          color: const Color(0xff1b1a2e),
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(height: 7),
            const Text('HEIGHT',
                style: TextStyle(color: Colors.grey, fontSize: 16)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: [
                Text('${value.height}',
                    style: const TextStyle(color: Colors.white, fontSize: 28)),
                const Text('cm',
                    style: TextStyle(color: Colors.grey, fontSize: 14)),
              ],
            ),
            Slider(
              value: value.height,
              onChanged: value.changeHeight,
              max: 250,
              min: 0,
              divisions: 250,
              activeColor: Colors.red,
            ),
          ],
        ),
      );
    });
  }
}
