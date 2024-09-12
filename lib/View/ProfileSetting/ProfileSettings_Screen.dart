import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:socialconnectionapp1/const/colors.dart';

import '../../Utils/Custom_Widgets.dart';
import '../PremiumScreens/HelloUser_ViewPlansScreen.dart';
import '../UserProfileScreen/UserProfileScreen.dart';

class ProfileSettings_Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: ColorValues.blue_backgroundcolor,
      appBar: AppBar(
        backgroundColor: ColorValues.blue_backgroundcolor,
        elevation: 4,
        leading: Icon(Icons.arrow_back, color: Colors.white),
        title: Center(
          child: Padding(
            padding: EdgeInsets.only(right: screenWidth * 0.14),
            child: Text(
              'Profile',
              style: TextStyle(
                color: ColorValues.white,
                fontSize: screenHeight * 0.03,
              ),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: screenHeight * 0.02),
              Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/model3.jpg'),
                    radius: screenWidth * 0.08,
                  ),
                  SizedBox(width: screenWidth * 0.04),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Jhon Abraham',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: screenHeight * 0.025,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        'Never give up',
                        style: TextStyle(
                          color: ColorValues.darkyellow,
                          fontSize: screenHeight * 0.017,
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  SvgPicture.asset(
                    'assets/qrcode.svg',
                    height: screenHeight * 0.04,
                  ),
                ],
              ),
              SizedBox(height: screenHeight * 0.04),
              InkWell(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => UserProfileScreen()),
                  );
                },
                child: ProfileSetting_Widget('assets/Keys.svg', 'Account',
                    'Privacy, security, change number', context),
              ),
              ProfileSetting_Widget('assets/Message.svg', 'Chat',
                  'Chat history, theme, wallpapers', context),
              ProfileSetting_Widget('assets/Notification.svg', 'Notifications',
                  'Messages, group and others', context),
              ProfileSetting_Widget('assets/Help.svg', 'Help',
                  'Help center, contact us, privacy policy', context),
              InkWell(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HelloUser_ViewPlansScreen()),
                    // (Route<dynamic> route) => false, // Remove all previous routes
                  );
                },
                child: ProfileSetting_Widget('assets/Data.svg', 'Storage and data',
                    'Network usage, storage usage', context),
              ),
              ProfileSetting_Widget(
                  'assets/Users.svg', 'Invite a friend', '', context),
            ],
          ),
        ),
      ),
    );
  }
}
