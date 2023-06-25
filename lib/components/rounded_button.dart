import 'package:flutter/material.dart';
import 'package:neatness_project/constants.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final double round;
  final Color textcolor;
  final Color color;
  final Function onPressedFunction;

  RoundedButton({this.text='',required this.onPressedFunction,this.round=20,this.color=primaryColor,this.textcolor=Colors.white});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 300,
        height: 100,
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
        child: Material(
          color: color,
          borderRadius: BorderRadius.circular(round),
          child: TextButton(
            onPressed: () => onPressedFunction,
            child: Text(text,style: TextStyle(
                fontSize: 30,
                color: textcolor
            ),),
          ),
        ));
  }
}
