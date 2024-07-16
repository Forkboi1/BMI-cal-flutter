import 'package:bmi_cal/gender_widget.dart';
import 'package:flutter/material.dart';
import 'body_dimension.dart';
import 'height_meter.dart';
import 'person.dart';

class BMI extends StatelessWidget {
  Person person = Person(gender: true, height: 178, weight: 91, age: 22);
  BMI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BMI CALCULATOR"),
        centerTitle: true,
      ),
      body: Column(
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
       bottomNavigationBar: GestureDetector(
        onTap: (){
          Navigator.pushNamed(context, '/result',arguments: person);
        },
         child: BottomAppBar(
          color: Theme.of(context).colorScheme.onPrimary,
          child: const Center(
            child: Text(
              "CALCULATE",
              style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24),
            ),
          ),
         ),
       )
    );
  }
}