import 'package:flutter/material.dart';

class HeightMeter extends StatefulWidget {
  const HeightMeter({super.key});

  @override
  State<HeightMeter> createState() => _HeightMeterState();
}

class _HeightMeterState extends State<HeightMeter> {
  var _height = 100.0;

  void _increaseHeight(double value){
    setState(() {
      _height = value;
    });
  }

  void _decreaseHeight(double value){
    setState(() {
      _height = value;
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
                  "${_height.toInt()}",
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
                  thumbShape: RoundSliderThumbShape(enabledThumbRadius: 5.0),
                  inactiveTrackColor: Theme.of(context).primaryColorLight// Adjust the size of the thumb
                ),
                child: Slider(
                  value: _height,
                  onChanged:(double value){
                    if (value > _height) {
                      _increaseHeight(value);
                    } else if (value < _height) {
                      _decreaseHeight(value);
                    }
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


