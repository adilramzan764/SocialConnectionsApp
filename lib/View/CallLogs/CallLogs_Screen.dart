import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:socialconnectionapp1/const/colors.dart';

import '../../Utils/Custom_Widgets.dart';
import '../CallScreen/CallScreen.dart';

class CallLogScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: ColorValues.blue_backgroundcolor,
      appBar: AppBar(
        backgroundColor: ColorValues.blue_backgroundcolor,
        elevation: 8,
        leading:           Padding(
            padding: EdgeInsets.only(left: screenWidth * 0.05),
            child: InkWell(
              onTap: (){},
              child: Container(
                height: screenHeight*0.11,
                width: screenWidth*0.11,
                decoration: BoxDecoration(
                  border: Border.all(color: ColorValues.darkyellow),
                  color: ColorValues.bluemain,
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: SvgPicture.asset(
                    'assets/search2.svg',
                    height: screenHeight*0.03,
                  ),
                ),
              ),
            )



        ),

        title: Text(
          'Calls',
          style: TextStyle(
            color: ColorValues.white,
            fontSize: screenHeight * 0.03,
          ),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: screenWidth * 0.05),
            child: InkWell(
              onTap: (){},
              child: Container(
                height: screenHeight*0.11,
                width: screenWidth*0.11,
                decoration: BoxDecoration(
                  border: Border.all(color: ColorValues.darkyellow),
                 color: ColorValues.bluemain,
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: SvgPicture.asset(
                    'assets/add_call.svg',
                    height: screenHeight*0.03,
                    color: ColorValues.darkyellow,
                  ),
                ),
              ),
            )



          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: screenHeight * 0.02),
            Text(
              'Recent',
              style: TextStyle(
                color: Colors.white,
                fontSize: screenHeight * 0.025,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: screenHeight * 0.02),
            Expanded(
              child: ListView.builder(
                itemCount: callLogs.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      CallLogItem(
                        callLogs[index],
                      ),
                      SizedBox(height: screenHeight * 0.01),

                      Padding(
                        padding:  EdgeInsets.only(left: screenWidth*0.19),
                        child: Divider(thickness: 1,color: ColorValues.white,),
                      )

                    ],
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

class CallLogItem extends StatelessWidget {
  final CallLog callLog;

  CallLogItem(this.callLog);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: EdgeInsets.symmetric(vertical: screenHeight * 0.01),
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(callLog.avatar),
            radius: screenWidth * 0.07,
          ),
          SizedBox(width: screenWidth * 0.04),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                callLog.name,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: screenHeight * 0.022,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                children: [
                  Icon(
                    callLog.callType == CallType.missed
                        ? Icons.call_missed
                        : Icons.call_received,
                    color: callLog.callType == CallType.missed
                        ? Colors.red
                        : Colors.green,
                    size: screenHeight * 0.02,
                  ),
                  SizedBox(width: screenWidth * 0.01),
                  Text(
                    callLog.time,
                    style: TextStyle(
                      color: ColorValues.bluemain,
                      fontSize: screenHeight * 0.017,
                    ),
                  ),
                  // Container(
                  //   height: 10,
                  //   width: double.infinity,
                  //   color: ColorValues.white,
                  // )
                ],
              ),
            ],
          ),
          Spacer(),
          InkWell(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CallScreen()),
              );
            },
            child: SvgPicture.asset(
              'assets/call_blue.svg',
              height: screenHeight * 0.03,
            ),
          ),
          SizedBox(width: screenWidth * 0.05),
          InkWell(
            onTap: (){},
            child: SvgPicture.asset(
              'assets/videocall_blue.svg',
              height: screenHeight * 0.03,
            ),
          ),
        ],
      ),
    );
  }
}

class CallLog {
  final String avatar;
  final String name;
  final String time;
  final CallType callType;

  CallLog({
    required this.avatar,
    required this.name,
    required this.time,
    required this.callType,
  });
}

enum CallType { received, missed }

List<CallLog> callLogs = [
  CallLog(
    avatar: 'assets/model1.jpg',
    name: 'Team Align',
    time: 'Today, 09:30 AM',
    callType: CallType.received,
  ),
  CallLog(
    avatar: 'assets/model3.jpg',
    name: 'Jhon Abraham',
    time: 'Today, 07:30 AM',
    callType: CallType.received,
  ),
  CallLog(
    avatar: 'assets/model4.jpg',
    name: 'Sabila Sayma',
    time: 'Yesterday, 07:35 PM',
    callType: CallType.missed,
  ),
  CallLog(
    avatar: 'assets/model6.jpg',
    name: 'Alex Linderson',
    time: 'Monday, 09:30 AM',
    callType: CallType.received,
  ),
  CallLog(
    avatar: 'assets/model1.jpg',
    name: 'Jhon Abraham',
    time: '03/07/22, 07:30 AM',
    callType: CallType.missed,
  ),
  CallLog(
    avatar: 'assets/model1.jpg',
    name: 'John Borino',
    time: 'Monday, 09:30 AM',
    callType: CallType.received,
  ),
];

