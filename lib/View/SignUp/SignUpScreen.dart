import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:socialconnectionapp1/Utils/Widgets/CustomButton.dart';
import 'package:socialconnectionapp1/Utils/Widgets/CustomText.dart';
import 'package:socialconnectionapp1/View/MyNumberScreens/OTPScreen.dart';
import 'package:socialconnectionapp1/const/colors.dart';

import '../../Utils/Custom_Widgets.dart';
import '../../Utils/Widgets/Appbar_CustomWidget.dart';
import 'HobiesScreen.dart';

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorValues.blue_backgroundcolor,
      appBar: Appbar_CustomWidget(),
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.09),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CustomText(
                  color: Colors.white,
                  fontSize: 33,
                  fontWeight: FontWeight.bold,
                  text: 'Sign Up',
                ),
                SizedBox(height: 20),
                buildTextField_SignUpWidget(hintText: 'Full Name'),
                SizedBox(height: 20),
                buildDropdown_SignUpwidget(hintText: 'Gender'),
                SizedBox(height: 20),
                buildCalendarField_SignUpWidget(hintText: 'DD/MM/YYYY', context: context),

                // buildDropdown_SignUpwidget(hintText: 'DD/MM/YYYY'),
                SizedBox(height: 20),
                buildTextField_SignUpWidget(hintText: 'Phone Number'),
                SizedBox(height: MediaQuery.of(context).size.height *0.05),
                CustomButton(text: 'Sign Up', onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => OTPScreen(isMyNumber_Screen: false,)),
                  );
                }),
                SizedBox(height: MediaQuery.of(context).size.height *0.04),
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width *0.2),
                  child: Row(
                    children: [
                      Expanded(child: Divider(color: Colors.white)),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          'or',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      Expanded(child: Divider(color: Colors.white)),
                    ],
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height *0.05),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Transform.scale(
                        scale: 1.8,
                        child: InkWell(
                            onTap: (){},
                            child: SvgPicture.asset('assets/fb.svg'))),
                    SizedBox(width: MediaQuery.of(context).size.width *0.06),
                   InkWell(
                       onTap: (){},
                       child: Image.asset('assets/google.png',height: 35,width: 35,))
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
