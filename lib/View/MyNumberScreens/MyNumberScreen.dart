import 'package:flutter/material.dart';
import 'package:socialconnectionapp1/Utils/Widgets/CustomButton.dart';
import 'package:socialconnectionapp1/const/colors.dart';

import '../../Utils/Widgets/Appbar_CustomWidget.dart';
import '../../Utils/Widgets/CustomText.dart';
import 'OTPScreen.dart';

class MyNumberScreen extends StatelessWidget {
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
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: screenHeight * 0.01),
              Align(
                alignment: Alignment.centerLeft,
                child: CustomText(
                  color: Colors.white,
                  fontSize: 33,
                  fontWeight: FontWeight.w500,
                  text: 'My number is',
                ),
              ),
              SizedBox(height: screenHeight * 0.03),
              Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: _buildDropdownField(),
                  ),
                  SizedBox(width: screenWidth * 0.02),
                  Expanded(
                    flex: 5,
                    child: _buildTextField(hintText: 'Phone Number'),
                  ),
                ],
              ),
              SizedBox(height: screenHeight * 0.03),
              Text.rich(

                TextSpan(

                  text:
                      'By clicking Log In, you agree with our Terms.  Learn how process your data in our Privacy  Policy and Cookies Policy. By clicking Log In, you agree with our Terms.  Learn how we ',
                  style: TextStyle(
                      color: Colors.white, fontSize: screenHeight * 0.017),
                  children: [
                    TextSpan(
                      text:
                          'process your data in our  Privacy Policy and Cookies Policy.',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: screenHeight * 0.017,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.08),
              CustomButton(text: 'CONTINUE', onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => OTPScreen(isMyNumber_Screen: true,)),
                );
              })
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextField({required String hintText}) {
    return TextField(
      keyboardType: TextInputType.number,
      decoration: InputDecoration(

        hintText: hintText,
        hintStyle: TextStyle(color: Colors.white),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
      ),
      style: TextStyle(color: Colors.white),
    );
  }

  Widget _buildDropdownField() {
    return DropdownButtonFormField<String>(
      decoration: InputDecoration(
        hintText: 'IN +91',
        hintStyle: TextStyle(color: Colors.white),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
      ),
      dropdownColor: ColorValues.white,
      iconEnabledColor: Colors.white,
      items: ['IN +91', 'US +1', 'UK +44'].map((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value, style: TextStyle(color: Colors.black)),
        );
      }).toList(),
      onChanged: (_) {},
      selectedItemBuilder: (BuildContext context) {
        return ['IN +91', 'US +1', 'UK +44'].map<Widget>((String value) {
          return Text(
            value,
            style: TextStyle(color: ColorValues.white), // Change the color here
          );
        }).toList();
      },
    );
  }
}
