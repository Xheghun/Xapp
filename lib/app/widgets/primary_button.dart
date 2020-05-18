import 'package:flutter/material.dart';
import 'package:mariamproject/app/constants/x_strings.dart';
import 'package:mariamproject/app/constants/x_styles.dart';

class PrimaryButton extends StatelessWidget {

  final String text;
  final Function onPressed;
  final Color color;


  PrimaryButton({this.text, this.onPressed,this.color = Colors.blue});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: color,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8)
        ),
        onPressed: onPressed,
        child: Container(padding: EdgeInsets.symmetric(vertical: 16,), child: Text(text,style: XStyles.primaryButtonTextStyle,)),
      ),
    );
  }
}