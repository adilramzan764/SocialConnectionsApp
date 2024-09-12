import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../const/colors.dart';
import 'CustomText.dart';

class PlanOption_Widget extends StatelessWidget {
  final String svg;
  final String title;
  final String duration;
  final String price;
  final double screenHeight;
  final double screenWidth;
  final bool selected;
  final VoidCallback onSelect;

  PlanOption_Widget({
    required this.svg,
    required this.title,
    required this.duration,
    required this.price,
    required this.screenHeight,
    required this.screenWidth,
    required this.selected,
    required this.onSelect,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onSelect,
      child: Container(
        padding: EdgeInsets.symmetric(
          vertical: screenHeight * 0.02,
          horizontal: screenWidth * 0.05,
        ),
        margin: EdgeInsets.only(bottom: screenHeight * 0.02),
        decoration: BoxDecoration(
          gradient: selected
              ? LinearGradient(
            colors: [ColorValues.darkyellow, ColorValues.bluemain.withOpacity(0.6)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          )
              : null,
          color: selected ? null : Colors.transparent,
          borderRadius: BorderRadius.circular(40),
          border: Border.all(
            color: selected ? Colors.transparent : ColorValues.bluemain,
            width: 2,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                SvgPicture.asset(svg),
                SizedBox(width: screenWidth * 0.03),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      text: title,
                      color: ColorValues.darkyellow,
                      fontSize: screenHeight * 0.022,
                      fontWeight: FontWeight.bold,
                    ),
                    CustomText(
                      text: duration,
                      color: ColorValues.bluemain,
                      fontSize: screenHeight * 0.015,
                    ),
                  ],
                ),
              ],
            ),
            CustomText(
              text: price,
              color: ColorValues.darkyellow,
              fontWeight: FontWeight.w500,

              fontSize: screenHeight * 0.022,
            ),
          ],
        ),
      ),
    );
  }
}
