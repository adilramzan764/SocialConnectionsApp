import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:socialconnectionapp1/Utils/Widgets/CustomButton.dart';
import 'package:socialconnectionapp1/View/SignUp/HobiesScreen.dart';
import 'package:socialconnectionapp1/const/colors.dart';

import '../../Utils/Widgets/Appbar_CustomWidget.dart';
import '../../Utils/Widgets/CustomText.dart';
import 'ProfileDetails_SignUp.dart';

class OTPScreen extends StatelessWidget {
  final bool isMyNumber_Screen; // Declare the property

  OTPScreen({Key? key, required this.isMyNumber_Screen}) : super(key: key); // Initialize the property
  TextEditingController _otpController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final screenHeight = mediaQuery.size.height;
    final screenWidth = mediaQuery.size.width;
    return Scaffold(
      backgroundColor: ColorValues.blue_backgroundcolor,
      appBar: Appbar_CustomWidget(),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.09),
        child: Column(
          children: [
            SizedBox(height: screenHeight * 0.01),
            Align(
              alignment: Alignment.centerLeft,
              child: CustomText(
                color: Colors.white,
                fontSize: 33,
                fontWeight: FontWeight.w500,
                text: 'Enter OTP',
              ),
            ),
            SizedBox(height: screenHeight * 0.07),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.1),
              child: CustomText(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w500,
                textAlign: TextAlign.center,
                text: 'Please enter the 4-digit code sent to your number',
              ),
            ),
            SizedBox(height: screenHeight * 0.04),
            PinCodeTextField(
              textStyle: TextStyle(color: ColorValues.white),
              controller: _otpController,
              appContext: context,

              length: 4,

              animationType: AnimationType.fade,

              pinTheme: PinTheme(
                shape: PinCodeFieldShape.underline,
                fieldHeight: 50,
                fieldWidth: 50,
                activeColor: Colors.grey,
                activeFillColor: Color.fromRGBO(36, 107, 253, 0.12),
                inactiveColor: ColorValues.white,
                inactiveFillColor: Colors.grey[200],
                selectedColor: ColorValues.white,
                selectedFillColor: Colors.blueAccent,
              ),
              animationDuration: const Duration(milliseconds: 300),

              keyboardType: TextInputType.number,

              onCompleted: (v) {
                debugPrint("Completed");
              },
              // onTap: () {
              //   print("Pressed");
              // },
              onChanged: (value) {
                // debugPrint(value);
                // setState(() {
                //   currentText = value;
                // });
              },
            ),
            SizedBox(height: screenHeight * 0.04),
            InkWell(
              onTap: () {},
              child: CustomText(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w400,
                textAlign: TextAlign.center,
                text: 'Resend',
              ),
            ),
            SizedBox(height: screenHeight * 0.04),
            CustomButton(
                text: 'SUBMIT',
                onPressed: () {
                  if(isMyNumber_Screen)
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ProfileDetails_SignUp()),
                  );
                  else
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => HobiesScreen()),
                    );
                })
          ],
        ),
      ),
    );
  }
}
