import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../const/colors.dart';
import 'CustomText.dart';

class PaymentOption_Widget extends StatelessWidget {
  final double screenHeight;
  final double screenWidth;
  final String bankName;
  final String cardNumber;
  final String logoPath;
  final bool selected;
  final VoidCallback onTap;

  PaymentOption_Widget({
    required this.screenHeight,
    required this.screenWidth,
    required this.bankName,
    required this.cardNumber,
    required this.logoPath,
    required this.selected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(bottom: screenHeight * 0.02),
        child: Row(
          children: [
            Icon(
              selected ? Icons.radio_button_checked : Icons.radio_button_unchecked,
              color: selected ? Colors.red : Colors.white70,
              size: screenHeight * 0.03,
            ),
            SizedBox(width: screenWidth * 0.02),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  text: bankName,
                  color: ColorValues.bluemain,
                  fontSize: screenHeight * 0.021,
                  fontWeight: FontWeight.w500,
                ),
                CustomText(
                  text: cardNumber,
                  color: ColorValues.darkyellow,
                  fontSize: screenHeight * 0.017,
                ),
              ],
            ),
            Spacer(),
            SvgPicture.asset(
              logoPath,
              height: screenHeight * 0.022,
            ),
          ],
        ),
      ),
    );
  }
}
