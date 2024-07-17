import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'person.dart';

class GenderWidget extends StatefulWidget {
  const GenderWidget({super.key});
  
  @override
  State<GenderWidget> createState() => _GenderWidgetState();
}

class _GenderWidgetState extends State<GenderWidget> {

  @override
  Widget build(BuildContext context) {
    var person = Provider.of<Person>(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        GestureDetector(
          onTap: person.gender? (){}:(){
            person.updateGender();
            setState(() {
            });
          },
          child: containerHolder(context, "MALE", Icons.male, person.gender)         
        ),
        GestureDetector(
          onTap: !person.gender? (){}:(){
            person.updateGender();
            setState(() {
            });
          },
          child: containerHolder(context, "FEMALE", Icons.female, person.gender),          
        ),
      ],
    );
  }

  Container containerHolder(BuildContext context, String gender, IconData genderIcon, bool isMale) {
    bool flag = gender == "MALE"? isMale:!isMale;
    return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: flag? Theme.of(context).colorScheme.secondary : Theme.of(context).colorScheme.onSecondary,
          ),
          padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 45),
          margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 15),
          child: Column(
            children:[
              Icon(genderIcon,size: 70,),
              Text(
                gender,
                style: Theme.of(context).textTheme.displaySmall
              ),
            ],
          ),
        );
  }
}
