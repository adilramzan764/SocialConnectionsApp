import 'package:flutter/material.dart';
import 'package:socialconnectionapp1/Utils/Widgets/CustomText.dart';
import 'package:socialconnectionapp1/const/colors.dart';

class MessageWidget extends StatelessWidget {
  final String profileImage;
  final String name;
  final String message;
  final String time;
  final bool isOnline;
  final int NumOfMsgs;
  final bool isRead;

  MessageWidget({
    required this.profileImage,
    required this.name,
    required this.message,
    required this.time,
    required this.isOnline,
    required this.NumOfMsgs,
    this.isRead = false,
  });

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      height: screenHeight *0.12,
      width: double.infinity,
      padding: EdgeInsets.all(screenWidth * 0.03),
      margin: EdgeInsets.symmetric(vertical: screenHeight * 0.01),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Stack(
        children: [
          Row(
            children: [
              Container(
                height: screenHeight * 0.08,
                width: screenWidth * 0.165,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: AssetImage(profileImage), fit: BoxFit.cover)),
              ),
              SizedBox(width: screenWidth * 0.03),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          name,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: screenHeight * 0.022,
                          ),
                        ),
                        SizedBox(
                          width: screenWidth * 0.02,
                        ),
                        if(isOnline)
                        Container(
                          height: screenHeight * 0.025,
                          width: screenWidth * 0.025,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              gradient: LinearGradient(
                                colors: [ColorValues.green, ColorValues.yellow],
                                end: Alignment.topCenter,
                                begin: Alignment.bottomLeft,
                              )),
                        ),
                        Expanded(
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: Text(
                              time,
                              style: TextStyle(
                                fontSize: screenHeight * 0.014,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: screenHeight * 0.005),
                    Text(
                      message,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: screenHeight * 0.018,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),

            ],
          ),
          if (NumOfMsgs>0)
            Align(
              alignment: Alignment.bottomRight,
              child: Container(
                margin: EdgeInsets.only(top: screenHeight * 0.005),
                height: screenWidth * 0.045,
                width: screenWidth * 0.045,
                decoration: BoxDecoration(
                  color: Colors.red,
                  shape: BoxShape.circle,
                ),
                child: Center(child: CustomText(text: NumOfMsgs.toString(),color: ColorValues.white,fontSize: screenHeight*0.014,)),
              ),
            ),
        ],
      ),
    );
  }
}

class SearchTextField extends StatelessWidget {
  final String hintText;

  SearchTextField({required this.hintText});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      margin: EdgeInsets.symmetric(vertical: screenHeight * 0.02),
      padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
      ),
      child: TextField(
        decoration: InputDecoration(
          hintText: hintText,
          border: InputBorder.none,
          suffixIcon: Icon(Icons.search, color: Colors.black),
        ),
      ),
    );
  }
}
