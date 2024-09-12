import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../const/colors.dart';

class Button_for_Starter3 extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final String svg;

  Button_for_Starter3({
    required this.text,
    required this.onPressed,
    required this.svg
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal:           MediaQuery.of(context).size.width *0.05,
      ),
      child: Container(
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
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              if(svg=='assets/google.png')
                Image.asset(svg,height: 27,width: 27,)
              else
              SvgPicture.asset(svg),
              Text(
                text,
                style: TextStyle(color: Colors.white,fontSize: 16),
              ),
              SizedBox(height: 5,width: 5,)
            ],
          ),
        ),
      ),
    );
  }
}