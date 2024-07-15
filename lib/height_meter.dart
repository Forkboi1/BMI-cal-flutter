import 'package:bmi_cal/b_m_i.dart';
import 'package:flutter/material.dart';

class HeightMeter extends StatefulWidget {
  const HeightMeter({super.key});

  @override
  State<HeightMeter> createState() => _HeightMeterState();
}

class _HeightMeterState extends State<HeightMeter> {
  int height = 100;

  void _increaseHeight(){
    setState(() {
      height += 1;
    });
  }

  void _decreaseHeight(){
    setState(() {
      height -= 1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return containerHolder(context);
  }

  Container containerHolder(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Theme.of(context).colorScheme.secondary,
        ),
        padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 40),
        child: Column(
          children: [
            Text(
              "HEIGHT",
              style: Theme.of(context).textTheme.displayMedium
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "$height",
                  style: Theme.of(context).textTheme.displayLarge
                ),
                const Text("cm"),
              ],
            ),
          ],
        ),
      );
  }

}


