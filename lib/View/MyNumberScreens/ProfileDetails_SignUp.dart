import 'package:flutter/material.dart';
import 'package:socialconnectionapp1/Utils/Widgets/Appbar_CustomWidget.dart';
import 'package:socialconnectionapp1/const/colors.dart';

import '../../Utils/Custom_Widgets.dart';
import '../../Utils/Widgets/CustomButton.dart';
import '../../Utils/Widgets/CustomText.dart';
import '../../Utils/Widgets/CustomTextField.dart';
import '../SignUp/HobiesScreen.dart';

class ProfileDetails_SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: Appbar_CustomWidget(),
      backgroundColor: ColorValues.blue_backgroundcolor,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.08),
          child: Column(
            children: [
              SizedBox(height: screenHeight * 0.02),
              CustomText(
                color: Colors.white,
                fontSize: screenHeight * 0.038,
                fontWeight: FontWeight.bold,
                text: 'Profile Details',
              ),
              SizedBox(height: screenHeight * 0.01),
              CustomText(
                color: Colors.white,
                fontSize: screenHeight * 0.018,
                fontWeight: FontWeight.w500,
                text: 'Fill up the following details',
              ),
              SizedBox(height: screenHeight * 0.03),
              CircleAvatar(
                radius: screenHeight * 0.065,
                backgroundColor: ColorValues.premiumgrey,
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Icon(
                        Icons.person,
                        size: screenHeight * 0.07,
                        color: ColorValues.light_purple,
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Container(
                        height: screenHeight * 0.037,
                        width: screenHeight * 0.037,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Color(0xffE1D044), Color(0xff00E5FA)],
                            end: Alignment.topCenter,
                            begin: Alignment.bottomLeft,
                          ),
                          shape: BoxShape.circle,
                          border: Border.all(
                            width: 2,
                            color: ColorValues.white
                          )
                        ),
                        child: Icon(
                          Icons.camera_alt,
                          color: Colors.white,
                          size: screenHeight * 0.02,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: screenHeight * 0.05),
              CustomTextField(
                hint: 'First Name',
              ),

              CustomTextField(
                hint: 'Last Name',
              ),
              CustomTextField(
                hint: 'DOB',
                icon: Icons.calendar_today,
              ),
              CustomTextField(
                hint: 'Select Gender',
                dropdownItems: ['Male', 'Female', 'Other'],
              ),

              SizedBox(height: screenHeight * 0.03),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.15),
                child: CustomButton(
                  text: 'SUBMIT',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HobiesScreen()),
                    );
                  },
                ),
              ),
              SizedBox(height: screenHeight * 0.03),
            ],
          ),
        ),
      ),
    );
  }
}
