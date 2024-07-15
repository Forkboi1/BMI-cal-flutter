import 'package:bmi_cal/gender_widget.dart';
import 'package:flutter/material.dart';

import 'height_meter.dart';

class BMI extends StatelessWidget {
  const BMI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BMI CALCULATOR"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Divider(
            thickness: 5,
            color: Theme.of(context).dividerColor,
          ),
          const GenderWidget(),
          const HeightMeter(),
          const BodyDimension(),
        ],
      ),
    );
  }
}


class BodyDimension extends StatefulWidget {
  const BodyDimension({super.key});

  @override
  State<BodyDimension> createState() => _BodyDimensionState();
}

class _BodyDimensionState extends State<BodyDimension> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}