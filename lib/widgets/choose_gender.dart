import 'package:bmi/providers/bmi_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ChooseGender extends StatelessWidget {
  const ChooseGender({
    Key? key,
    required this.gender,
    required this.icon,
    required this.color,
  }) : super(key: key);
  final String gender;
  final IconData icon;

  final Color color;
  @override
  Widget build(BuildContext context) {
    return Consumer<BMIprovider>(builder: (ctx, value, _) {
      return InkWell(
        onTap: () {
          if (gender.toLowerCase() == 'male') {
            value.changeGender(true);
          } else {
            value.changeGender(false);
          }
        },
        borderRadius: BorderRadius.circular(15),
        child: Container(
          padding: const EdgeInsets.all(15.0),
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(icon, size: 100, color: Colors.white),
              const SizedBox(height: 10),
              Text(
                gender,
                style: const TextStyle(color: Colors.grey, fontSize: 16),
              ),
            ],
          ),
        ),
      );
    });
  }
}
