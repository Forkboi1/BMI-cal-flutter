
import 'package:flutter/material.dart';

class Person extends ChangeNotifier{
  bool gender;
  double height;
  int weight;
  int age;
  Person({required this.gender, required this.height, required this.weight, required this.age});

  void updateGender() {
    gender = !gender;
    notifyListeners();
  }

  void updateHeight(double newHeight) {
    height = newHeight;
    notifyListeners();
  }

  void updateWeight(int newWeight) {
    weight = newWeight;
    notifyListeners();
  }

  void updateAge(int newAge) {
    age = newAge;
    notifyListeners();
  }

}