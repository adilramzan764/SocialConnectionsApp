import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:socialconnectionapp1/View/SignUp/SignUpScreen.dart';

import '../../Utils/Widgets/Button_for_Starter3.dart';
import '../../Utils/Widgets/CustomText.dart';
import '../../const/colors.dart';
import '../MyNumberScreens/MyNumberScreen.dart';

class StarterScreen3 extends StatelessWidget {
  const StarterScreen3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xff4567B7), Color(0xFF4567B7).withOpacity(0.85)],
            begin: Alignment.topCenter,
            end: Alignment.bottomLeft,
          ),
        ),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height:  MediaQuery.of(context).size.height *0.18,),
            Image.asset('assets/justlogo.png'),
            SizedBox(height:  MediaQuery.of(context).size.height *0.06,),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.11),
              child: CustomText(
                text: 'By clicking Log In, you agree with our Terms. Learn how we process your data in our Privacy Policy and Cookies Policy.',
                fontSize: 13,
                // fontWeight: FontWeight.w600,
                color: ColorValues.white,
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height:  MediaQuery.of(context).size.height *0.06,),

            Button_for_Starter3(text: 'Login With GOOGLE', onPressed: () {  }, svg: 'assets/google.png',),
            SizedBox(height:  MediaQuery.of(context).size.height *0.02,),

            Button_for_Starter3(text: 'Login With facebook', onPressed: () {  }, svg: 'assets/fb.svg',),
            SizedBox(height:  MediaQuery.of(context).size.height *0.02,),

            Button_for_Starter3(text: 'Login With Phone', onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyNumberScreen()),
              );
            }, svg: 'assets/call.svg',),
            Spacer(),

            Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomText(text: 'Don’t have account?',fontSize: 13,fontWeight: FontWeight.w500,color: ColorValues.white,),
                  InkWell(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SignUpScreen()),
                        );
                      },
                      child: CustomText(text: ' SignUp',fontSize: 13,fontWeight: FontWeight.w500,color: ColorValues.white,))
                ],
              ),
            ),
            SizedBox(height:  MediaQuery.of(context).size.height *0.04,),

          ],
        ),
      ),
    );
  }
}
