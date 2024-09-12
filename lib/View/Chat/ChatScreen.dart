import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:socialconnectionapp1/View/CallScreen/CallScreen.dart';
import 'package:socialconnectionapp1/const/colors.dart';

import '../../Utils/Widgets/ChatScreen_Widgets.dart';

class ChatScreen extends StatelessWidget {
  final List<Map<String, dynamic>> messages = [
    {
      'message': 'Hello! Jhon Abraham',
      'time': '09:23 AM',
      'isSentByMe': true,
      'senderName': 'Jhon Abraham',
      'senderImage': 'assets/model1.jpg',
    },
    {
      'message': 'Hello! How are you?',
      'time': '09:25 AM',
      'isSentByMe': false,
      'senderName': 'Nazrul',
      'senderImage': 'assets/model1.jpg',
    },
    {
      'message': 'I hope you are doing well. Have a great day!',
      'time': '09:26 AM',
      'isSentByMe': true,
      'senderName': 'Jhon Abraham',
      'senderImage': 'assets/model1.jpg',
    },
    {
      'message': 'Thank you! You too!',
      'time': '09:27 AM',
      'isSentByMe': false,
      'senderName': 'Nazrul',
      'senderImage': 'assets/model1.jpg',
    },
    {
      'message':
          'Just checking in to see if you need any help with the project. Let me know if you have any questions.',
      'time': '09:28 AM',
      'isSentByMe': true,
      'senderName': 'Jhon Abraham',
      'senderImage': 'assets/model1.jpg',
    },
    {
      'message': 'Sure, I will reach out if I need anything. Thanks!',
      'time': '09:30 AM',
      'isSentByMe': false,
      'senderName': 'Nazrul',
      'senderImage': 'assets/model1.jpg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: ColorValues.blue_backgroundcolor,
      appBar: AppBar(
        backgroundColor: ColorValues.blue_backgroundcolor,
        elevation: 0,
        leadingWidth: 40, // Adjust the leading width to be more compact
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back, color: Colors.white),
        ),
        titleSpacing: screenWidth*0.02, // Set titleSpacing to 0 to remove space between leading and title
        title: Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('assets/model1.jpg'),
              radius: screenWidth * 0.07,
            ),
            SizedBox(width: screenWidth * 0.03),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Jhon Abraham',
                  style: TextStyle(
                      fontSize: screenHeight * 0.022,
                      fontWeight: FontWeight.w500,
                      color: ColorValues.white),
                ),
                Text(
                  'Active now',
                  style: TextStyle(
                    fontSize: screenHeight * 0.015,
                    color: ColorValues.bluemain,
                  ),
                ),
              ],
            ),
            Spacer(),
            InkWell(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CallScreen()),
                  // (Route<dynamic> route) => false, // Remove all previous routes
                );
              },
              child: SvgPicture.asset('assets/voicecall.svg',
                  height: screenHeight * 0.032),
            ),
            SizedBox(width: screenWidth * 0.04),
            SvgPicture.asset('assets/videocall.svg',
                height: screenHeight * 0.036),
          ],
        ),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: screenHeight * 0.01),
            child: Text(
              'Today',
              style: TextStyle(
                color: Colors.yellow,
                fontSize: screenHeight * 0.02,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: messages.length,
              itemBuilder: (context, index) {
                return ChatMessage(
                  message: messages[index]['message'],
                  time: messages[index]['time'],
                  isSentByMe: messages[index]['isSentByMe'],
                  senderName: messages[index]['senderName'],
                  senderImage: messages[index]['senderImage'],
                );
              },
            ),
          ),
          ChatInputField(),
        ],
      ),
    );
  }
}
