import 'package:flutter/material.dart';
import 'package:mariamproject/app/constants/x_styles.dart';

class ElevatedTextField extends StatelessWidget {

  final String hint;
  final double radius;
  final double elevation;
  final bool obscureText;


  ElevatedTextField({this.hint, this.radius = 10, this.elevation = 4,this.obscureText = false});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: elevation,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(radius),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 6,vertical: 0),
        child: TextField(
          obscureText: obscureText,
          style: XStyles.hintStyle,
          decoration: InputDecoration(
              hintText: hint,
              contentPadding: EdgeInsets.all(0),
              hintStyle: XStyles.hintStyle,
              border: InputBorder.none
          ),
        ),
      ),
    );
  }
}