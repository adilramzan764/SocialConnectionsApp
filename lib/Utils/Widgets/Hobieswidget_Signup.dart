import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:socialconnectionapp1/const/colors.dart';

class HobiesWidget_SignUp extends StatelessWidget {
  final String title;
  final String icon;
  final bool isSelected;
  final VoidCallback onTap;

  HobiesWidget_SignUp({
    required this.title,
    required this.icon,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    double cardWidth = (screenWidth - 48) / 2; // Adjust the 48 value to match padding

    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: cardWidth,
        padding: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: ColorValues.white,
          borderRadius: BorderRadius.circular(30.0),
          border: Border.all(
            color: isSelected ? Color(0xff00E5FA) : Colors.transparent,
            width: isSelected ? 2 : 1,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            isSelected
                ? ShaderMask(
              shaderCallback: (bounds) => LinearGradient(
                colors: [Color(0xff00E5FA), Color(0xffE1D044)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ).createShader(bounds),
              child: SvgPicture.asset(
                icon,
                color: Colors.white,
                height: screenHeight * 0.028,
                width: screenWidth * 0.028,
              ),
            )
                : SvgPicture.asset(
              icon,
              color: Colors.black,
              height: screenHeight * 0.028,
              width: screenWidth * 0.028,
            ),
            SizedBox(width: screenWidth * 0.03),
            Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: screenHeight * 0.0165,
                fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
