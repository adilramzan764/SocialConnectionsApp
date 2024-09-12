import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:socialconnectionapp1/const/colors.dart';


import '../../Utils/Custom_Widgets.dart';
import '../../Utils/Widgets/CustomText.dart';
import '../../Utils/Widgets/MessageScreens_Widgets.dart';
import 'ChatScreen.dart';

class Messages_Screen extends StatelessWidget {
  final List<Map<String, dynamic>> messages = [
    {
      'profileImage': 'assets/model1.jpg',
      'name': 'Belle Benson',
      'message': 'Hi, How are you? Nice to meet you! Free now, You?',
      'time': '3:45 PM',
      'isOnline': true,
      'NumOfMsgs': 21,
      'isRead': false,
    },
    {
      'profileImage': 'assets/model3.jpg',
      'name': 'Myley Corbyn',
      'message': 'It\'s been 2 days so far. Will tell after a while about...',
      'time': '11:49 AM',
      'isOnline': false,
      'NumOfMsgs': 0,
      'isRead': true,
    },
    {
      'profileImage': 'assets/model1.jpg',
      'name': 'Sara Brown',
      'message': 'Hi Mathew, have you seen the new movie featuring Daniel...',
      'time': 'Yesterday',
      'isOnline': true,
      'NumOfMsgs': 9,
      'isRead': true,
    },
    {
      'profileImage': 'assets/model3.jpg',
      'name': 'Ruby Diaz',
      'message': 'Hey, what\'s up? Are you free? How are you?',
      'time': 'Yesterday',
      'isOnline': false,
      'NumOfMsgs': 0,
      'isRead': false,
    },
    {
      'profileImage': 'assets/model1.jpg',
      'name': 'Sara Brown',
      'message': 'Hi Mathew, have you seen the new movie featuring Daniel...',
      'time': 'Yesterday',
      'isOnline': false,
      'NumOfMsgs': 0,
      'isRead': true,
    },
  ];

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: ColorValues.blue_backgroundcolor,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.06),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: screenHeight * 0.07),
            Row(
              children: [
                CircularButtons('assets/Chat2.svg', () {}, 35, 35),
                SizedBox(
                  width: 15,
                ),
                CustomText(
                  text: 'Add New Message',
                  color: Colors.white,
                  fontSize: screenHeight * 0.025,
                  fontWeight: FontWeight.w600,
                ),
                Spacer(),
                SvgPicture.asset('assets/archive.svg', height: screenHeight * 0.03),
              ],
            ),
            SearchTextField(hintText: 'Search Message, Match'),
            CustomText(
              text: 'All Messages',
              color: Colors.white,
              fontSize: screenHeight * 0.025,
              fontWeight: FontWeight.w600,
            ),
            SizedBox(height: screenHeight*0.02,),
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.all(0),
                itemCount: messages.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ChatScreen()),
                        // (Route<dynamic> route) => false, // Remove all previous routes
                      );
                    },
                    child: MessageWidget(
                      profileImage: messages[index]['profileImage'],
                      name: messages[index]['name'],
                      message: messages[index]['message'],
                      time: messages[index]['time'],
                      isOnline: messages[index]['isOnline'],
                      NumOfMsgs: messages[index]['NumOfMsgs'],
                      isRead: messages[index]['isRead'],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
