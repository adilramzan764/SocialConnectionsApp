import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:socialconnectionapp1/const/colors.dart';

class CallScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: ColorValues.green,
      floatingActionButton: Padding(
        padding: EdgeInsets.only(bottom: screenHeight * 0.02),
        child: InkWell(
          onTap: () {},
          child: Container(
            height: screenHeight * 0.18,
            width: screenWidth * 0.21,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  colors: [Color(0xffCDC53E), Color(0xff00E5FA)],
                  end: Alignment.topCenter,
                  begin: Alignment.bottomLeft,
                )),
            child: Icon(Icons.call, color: ColorValues.white),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: Stack(
        children: [
          // Background Image
          Container(
            height: screenHeight,
            width: screenWidth,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/model7.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Gradient overlay
          Container(
            height: screenHeight,
            width: screenWidth,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.transparent,
                  Colors.black.withOpacity(0.6),
                ],
              ),
            ),
          ),
          // Back Button
          Positioned(
            top: screenHeight * 0.05,
            left: screenWidth * 0.02,
            child: IconButton(
              icon: Icon(Icons.arrow_back, color: Colors.white),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          // Match Info
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(
                bottom: screenHeight * 0.17,
                left: screenWidth * 0.05,
                right: screenWidth * 0.05,
              ),
              child: Container(
                height: screenHeight * 0.2,
                width: screenWidth,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: screenWidth * 0.03,
                                  vertical: screenHeight * 0.005),
                              decoration: BoxDecoration(
                                color: ColorValues.blue_backgroundcolor,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Text(
                                'Matched ',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: screenHeight * 0.02,
                                ),
                              ),
                            ),
                            Icon(Icons.favorite,
                                color: Colors.pink, size: screenHeight * 0.02),
                          ],
                        ),
                        SizedBox(height: screenHeight * 0.01),
                        Text(
                          'Sara Christin',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: screenHeight * 0.04,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: screenHeight * 0.03),
                        Container(
                          height: screenHeight * 0.05,
                          width: screenWidth * 0.24,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.white.withOpacity(0.3)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: screenHeight * 0.025,
                                width: screenWidth*0.03,
                                decoration: BoxDecoration(
                                  border: Border.all(width: 1,color: ColorValues.white,),
                                  color: Colors.red,
                                  shape: BoxShape.circle
                                ),

                              ),

                              SizedBox(width: screenWidth * 0.01),
                              Text(
                                '27:15',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: screenHeight * 0.02,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    // Partner Image
                    Container(
                      width: screenWidth * 0.27,
                      height: screenHeight * 0.19,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: ColorValues.white, width: 2),
                        image: DecorationImage(
                            image: AssetImage('assets/model1.jpg'),
                            fit: BoxFit.cover),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          // Bottom Bar with Buttons
          Align(
            alignment: Alignment.bottomCenter,
            child: Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: screenHeight * 0.15,
                  child: SvgPicture.asset(
                    'assets/callscreen_bg.svg',
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: screenHeight * 0.08,
                      left: screenWidth * 0.1,
                      right: screenWidth * 0.1),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Transform.scale(
                          scale: 1.2,
                          child: InkWell(
                              onTap: () {},
                              child: SvgPicture.asset('assets/send icon.svg'))),
                      Transform.scale(
                          scale: 1.2,
                          child: InkWell(
                              onTap: () {},
                              child: SvgPicture.asset('assets/Chat2.svg'))),
                      SizedBox(
                        width: screenWidth * 0.02,
                      ),
                      Transform.scale(
                          scale: 1.1,
                          child: InkWell(
                              onTap: () {},
                              child: SvgPicture.asset(
                                  'assets/swipe screen icon.svg'))),
                      Transform.scale(
                          scale: 1.1,
                          child: InkWell(
                              onTap: () {},
                              child: SvgPicture.asset(
                                  'assets/video off icon.svg'))),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
