import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:socialconnectionapp1/Utils/Widgets/CustomButton.dart';
import 'package:socialconnectionapp1/const/colors.dart';

import '../../Utils/Widgets/Appbar_CustomWidget.dart';
import '../../Utils/Widgets/CustomText.dart';
import '../../Utils/Widgets/PaymentOption_Widget.dart';

class PaymentScreen extends StatefulWidget {
  @override
  _PaymentScreenState createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  int _selectedOption = 0; // Variable to store the selected payment option

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: ColorValues.blue_backgroundcolor,
      appBar: Appbar_CustomWidget(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: screenHeight * 0.02),
              CustomText(
                text: 'Payment',
                color: Colors.lightBlueAccent,
                fontSize: screenHeight * 0.04,
                fontWeight: FontWeight.bold,
              ),
              CustomText(
                text: 'Complete your payment to enjoy the most',
                color: Colors.amberAccent,
                fontSize: screenHeight * 0.02,
              ),
              SizedBox(height: screenHeight * 0.03),
              CustomText(
                text: 'Saved payment options',
                color: ColorValues.white,
                fontSize: screenHeight * 0.03,
                fontWeight: FontWeight.bold,
              ),
              SizedBox(height: screenHeight * 0.02),
              PaymentOption_Widget(
                screenHeight: screenHeight,
                screenWidth: screenWidth,
                bankName: 'HDFC Credit Card',
                cardNumber: '.... .... .... 5229',
                logoPath: 'assets/master card icon.svg',
                selected: _selectedOption == 0,
                onTap: () {
                  setState(() {
                    _selectedOption = 0;
                  });
                },
              ),
              PaymentOption_Widget(
                screenHeight: screenHeight,
                screenWidth: screenWidth,
                bankName: 'ICICI Credit Card',
                cardNumber: '.... .... .... 4421',
                logoPath: 'assets/visa icon.svg',
                selected: _selectedOption == 1,
                onTap: () {
                  setState(() {
                    _selectedOption = 1;
                  });
                },
              ),
              SizedBox(height: screenHeight * 0.01),
              Divider(thickness: 0.7, color: ColorValues.white),
              SizedBox(height: screenHeight * 0.02),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                    text: 'UPI Payment',
                    color: Colors.white,
                    fontSize: screenHeight * 0.022,
                  ),
                  CustomText(
                    text: 'Linked',
                    color: Colors.lightBlueAccent,
                    fontSize: screenHeight * 0.022,
                  ),
                ],
              ),
              SizedBox(height: screenHeight * 0.02),
              Divider(thickness: 0.7, color: ColorValues.white),
              SizedBox(height: screenHeight * 0.02),
              CustomText(
                text: 'PayTM / Wallets',
                color: Colors.white,
                fontSize: screenHeight * 0.022,
              ),
              SizedBox(height: screenHeight * 0.02),
              Divider(thickness: 0.7, color: ColorValues.white),
              SizedBox(height: screenHeight * 0.02),
              CustomText(
                text: 'Net Banking',
                color: Colors.white,
                fontSize: screenHeight * 0.022,
              ),
              SizedBox(height: screenHeight * 0.02),
              Divider(thickness: 0.7, color: ColorValues.white),
              SizedBox(height: screenHeight * 0.02),
              Center(child: SvgPicture.asset('assets/add.svg')),
              Center(
                child: InkWell(
                  onTap: () {},
                  child: ShaderMask(
                    blendMode: BlendMode.srcIn,
                    shaderCallback: (bounds) => LinearGradient(
                      colors: [
                        Color(0xffCDC53E),
                        Color(0xff00E5FA).withOpacity(0.8)
                      ],
                      end: Alignment.topCenter,
                      begin: Alignment.bottomLeft,
                    ).createShader(bounds),
                    child: Text(
                      'Add New Payment Option',
                      style: TextStyle(
                        fontSize: screenHeight * 0.026,
                        fontWeight: FontWeight.w800,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.02),
              Center(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.2),
                  child: CustomButton(
                    text: 'Pay Now',
                    onPressed: () {},
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.05),
            ],
          ),
        ),
      ),
    );
  }
}

