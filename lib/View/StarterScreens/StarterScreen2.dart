import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


import '../../Utils/Widgets/CustomButton.dart';
import '../../Utils/Widgets/CustomText.dart';
import '../../const/colors.dart';
import 'StarterScreen3.dart';

class StarterScreen2 extends StatelessWidget {
  const StarterScreen2({Key? key}) : super(key: key);

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
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.13,
            ),
            CustomText(
              text: 'Online Friendship App',
              fontSize: 13,
              fontWeight: FontWeight.w600,
              color: ColorValues.bluemain,
            ),
            SizedBox(height: MediaQuery.of(context).size.height *0.03,),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.2),
              child: CustomText(
                text: 'Find your best friend',
                fontSize: 42,
                fontWeight: FontWeight.w700,
                color: ColorValues.bluemain,
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.4,
              width: double.infinity,
              child: Stack(
                children: [
                  Center(
                      child: Image.asset(
                    'assets/logo.png',
                    height: MediaQuery.of(context).size.height * 0.3,
                    width: MediaQuery.of(context).size.height * 0.2,
                  )),
                  Center(
                      child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width * 0.01),
                    child: Image.asset('assets/starter1.png'),
                  )),
                ],
              ),
            ),
            Spacer(),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding:  EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width *0.24),
                child: CustomButton( text: 'Start chatting', onPressed: () {

                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => StarterScreen3()),
                  );
                },),
              ),
            ),
            SizedBox(height:  MediaQuery.of(context).size.height *0.03,)

          ],
        ),
      ),
    );
  }
}
