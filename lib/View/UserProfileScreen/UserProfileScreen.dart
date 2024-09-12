import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:socialconnectionapp1/Utils/Widgets/Appbar_CustomWidget.dart';

import '../../Utils/Widgets/CustomText.dart';
import '../../const/colors.dart';

class UserProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: ColorValues.blue_backgroundcolor,
      appBar: Appbar_CustomWidget(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // Align all details to the left
          children: [
            SizedBox(height: screenHeight * 0.01),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/model3.jpg'),
                  radius: screenWidth * 0.13,
                ),
                SizedBox(height: screenHeight * 0.02),
                CustomText(
                  text: 'Jhon Abraham',
                  color: Colors.white,
                  fontSize: screenHeight * 0.026,
                  fontWeight: FontWeight.bold,
                ),
                SizedBox(height: screenHeight * 0.005),
                CustomText(
                  text: '@jhonabraham',
                  color: Colors.white70,
                  fontSize: screenHeight * 0.012,
                ),
                SizedBox(height: screenHeight * 0.03),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _buildIcon(context, 'assets/Message.svg'),
                    _buildIcon(context, 'assets/videocall.svg'),
                    _buildIcon(context, 'assets/voicecall.svg'),
                    _buildIcon(context, 'assets/More.svg'),
                  ],
                ),
                SizedBox(height: screenHeight * 0.03),
                Divider(
                  color: Colors.white30,
                  thickness: 1,
                ),
              ],
            ),
            SizedBox(height: screenHeight * 0.03),
            InfoField(
              title: 'Display Name',
              info: 'Jhon Abraham',
            ),
            SizedBox(height: screenHeight * 0.02),
            InfoField(
              title: 'Email Address',
              info: 'jhonabraham20@gmail.com',
            ),
            SizedBox(height: screenHeight * 0.02),
            InfoField(
              title: 'Address',
              info: '33 street west subidbazar,sylhet',
            ),
            SizedBox(height: screenHeight * 0.02),
            InfoField(
              title: 'Phone Number',
              info: '(320) 555-0104',
            ),
            SizedBox(height: screenHeight * 0.015),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(
                  text: 'Media Shared',
                  color: ColorValues.darkyellow,
                  fontSize: screenHeight * 0.0155,
                  fontWeight: FontWeight.w400,
                ),
                TextButton(
                  onPressed: () {},
                  child: CustomText(
                    text: 'View All',
                    color: ColorValues.bluemain,
                    fontSize: screenHeight * 0.016,
                  ),
                ),
              ],
            ),
            SizedBox(height: screenHeight * 0.01),
            Expanded(
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  MediaItem(imagePath: 'assets/media1.png'),
                  MediaItem(imagePath: 'assets/media2.png'),
                  MediaItem(imagePath: 'assets/media3.png'),
                  // Add more MediaItem widgets here
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildIcon(BuildContext context, String assetPath) {
    double screenHeight = MediaQuery.of(context).size.height;

    return Container(
      padding: EdgeInsets.all(screenHeight * 0.014),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.black26, // Light black color for the circular container
      ),
      child: SvgPicture.asset(
        assetPath,
        height: screenHeight * 0.035,
        color: ColorValues.white,
      ),
    );
  }
}

class InfoField extends StatelessWidget {
  final String title;
  final String info;

  InfoField({required this.title, required this.info});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          text: title,
          color: ColorValues.darkyellow,
          fontSize: screenHeight * 0.0155,
          fontWeight: FontWeight.w400,
        ),
        SizedBox(height: screenHeight * 0.005),
        CustomText(
          text: info,
          color: Colors.white,
          fontSize: screenHeight * 0.02,
          fontWeight: FontWeight.w500,
        ),
      ],
    );
  }
}

class MediaItem extends StatelessWidget {
  final String imagePath;

  MediaItem({required this.imagePath});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: EdgeInsets.only(right: screenWidth * 0.02),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.asset(
          imagePath,
          width: screenWidth * 0.25,
          height: screenHeight * 0.15,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
