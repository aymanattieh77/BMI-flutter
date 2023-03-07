import 'package:bmi/providers/bmi_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CardView extends StatelessWidget {
  const CardView({
    Key? key,
    required this.label,
  }) : super(key: key);

  final String label;

  @override
  Widget build(BuildContext context) {
    return Consumer<BMIprovider>(builder: (ctx, value, _) {
      return Card(
        color: const Color(0xff1b1a2e),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 10),
            Text(label,
                style: const TextStyle(fontSize: 16, color: Colors.grey)),
            const SizedBox(height: 5),
            Text(
                label.toLowerCase() == 'weight'
                    ? '${value.weight}'
                    : '${value.age}',
                style: const TextStyle(fontSize: 25, color: Colors.white)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.grey.shade800,
                  child: IconButton(
                      onPressed: () {
                        if (label.toLowerCase() == 'weight') {
                          value.decrementWeight();
                        } else {
                          value.decrementAge();
                        }
                      },
                      icon: const Icon(
                        Icons.remove,
                        color: Colors.white,
                      )),
                ),
                const SizedBox(width: 5.0),
                CircleAvatar(
                  backgroundColor: Colors.grey.shade800,
                  child: IconButton(
                      onPressed: () {
                        if (label.toLowerCase() == 'weight') {
                          value.incrementWeight();
                        } else {
                          value.incrementAge();
                        }
                      },
                      icon: const Icon(
                        Icons.add,
                        color: Colors.white,
                      )),
                ),
              ],
            ),
            const SizedBox(height: 15),
          ],
        ),
      );
    });
  }
}
