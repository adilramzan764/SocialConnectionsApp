import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:socialconnectionapp1/Utils/Widgets/Appbar_CustomWidget.dart';

import '../../Utils/Widgets/CustomButton.dart';
import '../../Utils/Widgets/CustomText.dart';
import '../../Utils/Widgets/PlanOption_Widget.dart';
import '../../const/colors.dart';
import 'PaymentScreen.dart';

class SubscriptionScreen extends StatefulWidget {
  @override
  _SubscriptionScreenState createState() => _SubscriptionScreenState();
}

class _SubscriptionScreenState extends State<SubscriptionScreen> {
  String selectedPlan = 'Pro Buddy'; // Set initial selected plan

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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: screenHeight * 0.02),
            CustomText(
              text: 'For Best Access',
              color: ColorValues.bluemain,
              fontSize: screenHeight * 0.04,
              fontWeight: FontWeight.w600,
            ),
            CustomText(
              text: 'Subscribe a plan 💖',
              color: ColorValues.darkyellow,
              fontWeight: FontWeight.w600,
              fontSize: screenHeight * 0.018,
            ),
            SizedBox(height: screenHeight * 0.03),
            CustomText(
              text: 'Top features you will get',
              color: ColorValues.bluemain,
              fontSize: screenHeight * 0.024,
              fontWeight: FontWeight.w600,
            ),
            SizedBox(height: screenHeight * 0.015),
            CustomText(
              text: '• Find out who\'s following you\n• Contact popular and new users\n• Browse profile invisibly & Many more...',
              color: ColorValues.darkyellow,
              fontSize: screenHeight * 0.018,
            ),
            SizedBox(height: screenHeight * 0.03),
            CustomText(
              text: 'Select your Plan',
              color: ColorValues.bluemain,
              fontSize: screenHeight * 0.024,
              fontWeight: FontWeight.w600,
            ),
            SizedBox(height: screenHeight * 0.03),
            PlanOption_Widget(
              title: 'Starter X',
              duration: '3 Months',
              price: '\$33.00',
              screenHeight: screenHeight,
              screenWidth: screenWidth,
              selected: selectedPlan == 'Starter X',
              svg: 'assets/starter.svg',
              onSelect: () {
                setState(() {
                  selectedPlan = 'Starter X';
                });
              },
            ),
            PlanOption_Widget(
              title: 'Pro Buddy',
              duration: '6 Months',
              price: '\$60.00',
              screenHeight: screenHeight,
              screenWidth: screenWidth,
              selected: selectedPlan == 'Pro Buddy',
              svg: 'assets/pro.svg',
              onSelect: () {
                setState(() {
                  selectedPlan = 'Pro Buddy';
                });
              },
            ),
            PlanOption_Widget(
              title: 'Advanced U',
              duration: '12 Months',
              price: '\$108.00',
              screenHeight: screenHeight,
              screenWidth: screenWidth,
              selected: selectedPlan == 'Advanced U',
              svg: 'assets/advanced.svg',
              onSelect: () {
                setState(() {
                  selectedPlan = 'Advanced U';
                });
              },
            ),
            Spacer(),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: screenWidth* 0.25),
              child: CustomButton(text: 'Continue', onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PaymentScreen()),
                  // (Route<dynamic> route) => false, // Remove all previous routes
                );

              }),
            ),
            SizedBox(height: screenHeight * 0.05),
          ],
        ),
      ),
    );
  }
}

