import 'package:flutter/material.dart';

class GenderWidget extends StatefulWidget {
  const GenderWidget({super.key});

  @override
  State<GenderWidget> createState() => _GenderWidgetState();
}

class _GenderWidgetState extends State<GenderWidget> {
  bool _isMale = true;

  void _toggleGenderSelection(){
    setState(() {
      _isMale = !_isMale;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        GestureDetector(
          onTap: _isMale? (){}:_toggleGenderSelection,
          child: containerHolder(context, "MALE", Icons.male)         
        ),
        GestureDetector(
          onTap: !_isMale? (){}:_toggleGenderSelection,
          child: containerHolder(context, "FEMALE", Icons.female),          
        ),
      ],
    );
  }
  
  Container containerHolder(BuildContext context, String gender, IconData genderIcon) {
    return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: !_isMale ? Theme.of(context).colorScheme.secondary : Theme.of(context).colorScheme.onSecondary,
          ),
          padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 40),
          child: Column(
            children:[
              Icon(genderIcon,size: 70,),
              Text(
                gender,
                style: Theme.of(context).textTheme.displayMedium
              ),
            ],
          ),
        );
  }
}