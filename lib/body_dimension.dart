import 'package:bmi_cal/b_m_i.dart';
import 'package:flutter/material.dart';

class BodyDimension extends StatefulWidget {
  const BodyDimension({super.key});

  @override
  State<BodyDimension> createState() => _BodyDimensionState();
}

class _BodyDimensionState extends State<BodyDimension> {
  int _weight = 50;
  int age = 22;
  Container containerHolder(BuildContext context, String dimensionType) {
    return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Theme.of(context).colorScheme.secondary,
          ),
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 35),
          child: Column(
            children:[
              Text(
                dimensionType,
                style: Theme.of(context).textTheme.displaySmall),
              Text(
                "25",
                style: Theme.of(context).textTheme.displayMedium
              ),
              Row(
                children: [
                  Material(
                    elevation: 5.0,
                    shape: CircleBorder(), // This ensures the material has a circular shape
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.remove),
                    ),
                  ),
                  SizedBox(width: 10,),
                  Material(
                    elevation: 5.0,
                    shape: CircleBorder(), // This ensures the material has a circular shape
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.add),
                    ),
                  ),
                ],
              )
            ],
          ),
        );
  }
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        containerHolder(context, "WEIGHT"),
        containerHolder(context, "AGE"),
      ],
    );
  }
}