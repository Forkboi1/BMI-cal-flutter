import 'package:bmi_cal/person.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HeightMeter extends StatefulWidget {
  HeightMeter({super.key});

  @override
  State<HeightMeter> createState() => _HeightMeterState();
}

class _HeightMeterState extends State<HeightMeter> {
  
  _HeightMeterState();

  @override
  Widget build(BuildContext context) {
    return containerHolder(context);
  }

  Container containerHolder(BuildContext context) {
    var person = Provider.of<Person>(context);
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Theme.of(context).colorScheme.secondary,
        ),
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 0),
        margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
        child: Column(
          children: [
            Text(
              "HEIGHT",
              style: Theme.of(context).textTheme.displaySmall
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "${person.height.toInt()}",
                  style: Theme.of(context).textTheme.displayMedium
                ),
                const Text("cm"),
              ],
            ),
            SizedBox(
              width: 300, // Adjust the width as needed
              child: SliderTheme(
                data: SliderTheme.of(context).copyWith(
                  trackHeight: 1.0, // Adjust the height of the track
                  thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 5.0),
                  inactiveTrackColor: Theme.of(context).primaryColorLight// Adjust the size of the thumb
                ),
                child: Slider(
                  value: person.height,
                  onChanged:(double value){
                    setState(() {
                      person.updateHeight(value);
                    });
                  },
                  min: 1,
                  max: 200,
                  divisions: 199, // Ensures only integer values
                  thumbColor: Theme.of(context).colorScheme.onPrimary,
                  activeColor: Theme.of(context).colorScheme.onPrimary,
                ),
              ),
            ),
          ],
        ),
      );
  }

}


