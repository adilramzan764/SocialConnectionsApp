import 'package:flutter/material.dart';
import 'package:socialconnectionapp1/Utils/Widgets/CustomButton.dart';
import 'package:socialconnectionapp1/const/colors.dart';

import '../../Utils/Widgets/CustomText.dart';
import 'SubscriptionPackageScreen.dart';

class HelloUser_ViewPlansScreen extends StatelessWidget {
  const HelloUser_ViewPlansScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: ColorValues.blue_backgroundcolor,
      body: Container(
        height: screenHeight,
        width: screenWidth,
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Container(
                height: screenHeight*0.55,
                width: screenWidth*1.1,
                child: MediaQuery.removePadding(context: context,
                removeBottom: true,
                child: Image.asset('assets/hellouser.png'))),
            CustomText(
              text: "Hello User",
              color: ColorValues.bluemain,
              fontSize: screenHeight * 0.05,
              fontWeight: FontWeight.w500,
            ),
            SizedBox(height: screenHeight * 0.01),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: screenWidth* 0.15),
              child: CustomText(
                text: "To continue with this option please choose a subscription plan that suits you & get the most out of the app",
                color: ColorValues.bluemain,
                fontSize: screenHeight * 0.019,
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: screenHeight * 0.05),

            Padding(
              padding:  EdgeInsets.symmetric(horizontal: screenWidth* 0.27),
              child: CustomButton(text: 'View Plans', onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SubscriptionScreen()),
                  // (Route<dynamic> route) => false, // Remove all previous routes
                );

              }),
            )
          ],
        ),
      ),
    );
  }
}
