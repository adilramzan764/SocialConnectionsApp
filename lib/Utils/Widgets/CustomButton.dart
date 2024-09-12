import 'package:flutter/material.dart';

import '../../const/colors.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  CustomButton({
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xffCDC53E).withOpacity(0.85), Color(0xFFFDC031)],
            end: Alignment.topCenter,
            begin: Alignment.bottomLeft,
          ),
        borderRadius: BorderRadius.circular(25),
        // color: ColorValues.bluemain
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          primary: Colors.transparent,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        child: Text(
          text,
          style: TextStyle(color: Colors.white,fontSize: 16),
        ),
      ),
    );
  }
}