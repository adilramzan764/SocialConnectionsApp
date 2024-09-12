import 'package:flutter/material.dart';
import 'package:socialconnectionapp1/Utils/Widgets/CustomText.dart';
import 'package:socialconnectionapp1/const/colors.dart';

import '../../Utils/Custom_Widgets.dart';
import '../../Utils/Widgets/Appbar_CustomWidget.dart';

class NotificationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: ColorValues.blue_backgroundcolor,
      appBar: Appbar_CustomWidget(),
      body: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: screenWidth * 0.05),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                text: "Notifications",
                color: Colors.white,
                fontSize: screenHeight * 0.04,
                fontWeight: FontWeight.w500,
              ),
              SizedBox(height: screenHeight * 0.01),
              CustomText(
                text: "Check notifications, respond to it",
                color: Colors.white.withOpacity(0.7),
                fontSize: screenHeight * 0.02,
              ),
              SizedBox(height: screenHeight * 0.03),
              Container(
                height: screenHeight*0.15 *6,
                width: screenWidth,
                child: ListView(
                  physics: NeverScrollableScrollPhysics(),
                  children: [
                    notificationItem(
                        context,
                        'assets/model1.jpg',
                        'Myley Corbyn liked you',
                        'Hi Mathew, Myley here. Would you like to chat? Waiting...',
                        '03:42 PM | 30.04.2021'),
                    notificationItem(
                        context,
                        'assets/heart.png',
                        'Big Discount, Hurry!',
                        'Season\'s discount, only for you, put yourself in the spotlight, enjoy dating.',
                        '09:52 AM | 30.04.2021'),
                    notificationItem(
                        context,
                        'assets/model6.jpg',
                        'Sara Christin liked you back',
                        'Hi Mathew, Thanks for your interest. Would love to hear you back.',
                        '11:15 AM | 29.04.2021'),
                    notificationItem(
                        context,
                        'assets/model6.jpg',
                        'You liked Ruby',
                        'You liked Ruby, check out what\'s her response, keep dating...',
                        '09:57 AM | 29.04.2021'),
                    notificationItem(
                        context,
                        'assets/model3.jpg',
                        'New proposal from Sansa Ben',
                        'Sansa has proposed you for going out to a nearest event on this weekend.',
                        '10:57 AM | 29.04.2021'),
                    notificationItem(
                        context,
                        'assets/model3.jpg',
                        'New proposal from Sansa Ben',
                        'Sansa has proposed you for going out to a nearest event on this weekend.',
                        '10:57 AM | 29.04.2021'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }


}
