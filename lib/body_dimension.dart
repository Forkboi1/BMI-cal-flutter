import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'person.dart';

class BodyDimension extends StatefulWidget {
  const BodyDimension({super.key});

  @override
  State<BodyDimension> createState() => _BodyDimensionState();
}

class _BodyDimensionState extends State<BodyDimension> {

  Container containerHolder(BuildContext context, String dimensionType, int currentValue, VoidCallback onDecrement, VoidCallback onIncrement) {
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
            style: Theme.of(context).textTheme.displaySmall,
          ),
          Text(
            currentValue.toString(),
            style: Theme.of(context).textTheme.displayMedium,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Material(
                elevation: 5.0,
                shape: CircleBorder(), // This ensures the material has a circular shape
                child: IconButton(
                  onPressed: onDecrement,
                  icon: Icon(Icons.remove),
                ),
              ),
              SizedBox(width: 10,),
              Material(
                elevation: 5.0,
                shape: CircleBorder(), // This ensures the material has a circular shape
                child: IconButton(
                  onPressed: onIncrement,
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
    var person = Provider.of<Person>(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        containerHolder(
          context, 
          "WEIGHT", 
          person.weight, 
          () {
            person.updateWeight(person.weight - 1);
          },
          () {
            person.updateWeight(person.weight + 1);
          }
        ),
        containerHolder(
          context, 
          "AGE", 
          person.age, 
          () {
            person.updateAge(person.age - 1);
          },
          () {
            person.updateAge(person.age + 1);
          }
        ),
      ],
    );
  }
}
