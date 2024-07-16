import 'dart:math';
import 'package:bmi_cal/person.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {

  const ResultPage({Key? key, required this.person}) : super(key: key);

  final Person person;


  (double, String, String, Color) bmi_cal() {
    double bmiValue = person.weight / pow((person.height / 100), 2);
    String bmiCategory;
    String bmiMessage;
    Color bmiColor;

    if (bmiValue >= 25) {
      bmiCategory = "OVERWEIGHT";
      bmiMessage =
          "You have a higher than normal body weight. Try to exercise more.";
      bmiColor = Colors.red;
    } else if (bmiValue > 18.5) {
      bmiCategory = "NORMAL";
      bmiMessage = "You have a normal body weight. Good job!";
      bmiColor = Colors.green;
    } else {
      bmiCategory = "UNDERWEIGHT";
      bmiMessage = "You have a lower than normal body weight. You can eat a bit more.";
      bmiColor = Colors.yellow;
    }

    return (bmiValue, bmiCategory, bmiMessage, bmiColor);
  }
  
  @override
  Widget build(BuildContext context) {
    var bmiResults = bmi_cal();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Your result",
          style: Theme.of(context).textTheme.displayMedium,
          ),
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Theme.of(context).colorScheme.secondary,
      ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              "${bmiResults.$2}",
              style: TextStyle(
                color: bmiResults.$4,
                fontWeight: FontWeight.bold,
              ),
              ),
            Text(
              "${bmiResults.$1}".substring(0,4),
              style: Theme.of(context).textTheme.displayLarge,
              ),
            Text(
              "${bmiResults.$3}",
              ),
          ],
        ),
      ),
      bottomNavigationBar: GestureDetector(
        onTap: (){
          Navigator.pop(context);
        },
         child: BottomAppBar(
          color: Theme.of(context).colorScheme.onPrimary,
          child: const Center(
            child: Text(
              "RE-CALCULATE",
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