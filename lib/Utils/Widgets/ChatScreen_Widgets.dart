import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:flutter/material.dart';
import 'package:socialconnectionapp1/Utils/Widgets/CustomText.dart';
import 'package:socialconnectionapp1/const/colors.dart';

class ChatMessage extends StatelessWidget {
  final String message;
  final String time;
  final bool isSentByMe;
  final String? senderName;
  final String? senderImage;

  ChatMessage({
    required this.message,
    required this.time,
    this.isSentByMe = true,
    this.senderName = '',
    this.senderImage = '',
  });

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding:  EdgeInsets.symmetric(horizontal:screenHeight * 0.008),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: screenHeight * 0.01, horizontal: screenWidth * 0.02),
        child: Row(
          mainAxisAlignment: isSentByMe ? MainAxisAlignment.end : MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (!isSentByMe)
              CircleAvatar(
                backgroundImage: AssetImage(senderImage!),
                radius: screenWidth * 0.05,
              ),
            if (!isSentByMe)
              SizedBox(width: screenWidth * 0.03),
            Column(
              crossAxisAlignment: isSentByMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
              children: [
                if (!isSentByMe)
                  Text(
                    senderName!,
                    style: TextStyle(
                      fontSize: screenHeight * 0.02,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                Container(
                  constraints: BoxConstraints(maxWidth: screenWidth * 0.7),
                  padding: EdgeInsets.symmetric(
                    vertical: screenHeight * 0.01,
                    horizontal: screenWidth * 0.03,
                  ),
                  decoration: BoxDecoration(
                    color: isSentByMe ? Color(0xffCDC53E) : Colors.white,
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(12),
                      bottomLeft: Radius.circular(12),
                     topLeft : isSentByMe ? Radius.circular(12) : Radius.circular(0),
                      topRight: isSentByMe ? Radius.circular(0) : Radius.circular(12),
                    ),
                  ),
                  child: Text(
                    message,
                    style: TextStyle(
                      fontSize: screenHeight * 0.02,
                      color: isSentByMe ? Colors.white : Colors.black,
                    ),
                  ),
                ),
                SizedBox(height: screenHeight * 0.005),
                Text(
                  time,
                  style: TextStyle(
                    fontSize: screenHeight * 0.015,
                    color: ColorValues.bluemain,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}



class ChatInputField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding:  EdgeInsets.all(screenHeight * 0.008),
      child: Container(
        // padding: EdgeInsets.symmetric(
        //   horizontal: screenWidth * 0.04,
          height: screenHeight * 0.065,
        // ),
        decoration: BoxDecoration(
          color: ColorValues.blue_backgroundcolor,

        ),
        child: Row(
          children: [
            InkWell(
              onTap: (){},

              child: SvgPicture.asset(
                'assets/media.svg',
                height: screenHeight * 0.04,
              ),
            ),
            SizedBox(width: screenWidth * 0.01),
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Write your message",
                  hintStyle: TextStyle(color: ColorValues.white,fontWeight: FontWeight.w300,fontSize: screenHeight*0.02),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(color: ColorValues.white, width: 1),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(color: ColorValues.white, width: 1),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(color: ColorValues.white, width: 1),
                  ),
                  filled: true,
                  fillColor: ColorValues.blue_backgroundcolor,
                  suffixIcon: Transform.scale(
                      scale: 0.6,
                      child: InkWell(
                          onTap: (){},

                          child: SvgPicture.asset('assets/files.svg')))
                ),
              )
              ,
            ),
            SizedBox(width: screenWidth * 0.03),
            InkWell(
              onTap: (){},

              child: SvgPicture.asset(
                'assets/camera 2.svg',
                height: screenHeight * 0.04,
              ),
            ),
            SizedBox(width: screenWidth * 0.015),
            InkWell(
              onTap: (){},
              child: SvgPicture.asset(
                'assets/microphone.svg',
                height: screenHeight * 0.038,
              ),
            ),

          ],
        ),
      ),
    );
  }
}

