import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'StarterScreen2.dart';

class StarterScreen1 extends StatelessWidget {
  const StarterScreen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height:  MediaQuery.of(context).size.height ,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xff4567B7), Color(0xFF4567B7).withOpacity(0.85)],
            begin: Alignment.topCenter,
            end: Alignment.bottomLeft,
          ),
        ),
        child: Stack(
          children: [
            Center(child: Image.asset('assets/logo.png',height: MediaQuery.of(context).size.height *0.4,width: MediaQuery.of(context).size.height *0.3 ,)),
            Center(child: Padding(
              padding:  EdgeInsets.symmetric(horizontal:  MediaQuery.of(context).size.width *0.01),
              child: Image.asset('assets/starter1.png'),
            )),
            Align(
              alignment: Alignment.bottomCenter,
              child: InkWell(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => StarterScreen2()),
                  );
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Get ',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w800,color: Color(0xffCDC53E).withOpacity(0.9)),
                    ),
                    ShaderMask(
                      blendMode: BlendMode.srcIn,
                      shaderCallback: (bounds) => LinearGradient(
                        colors: [Color(0xffCDC53E), Color(0xff00E5FA).withOpacity(0.8)],
                        end: Alignment.topCenter,
                        begin: Alignment.bottomLeft,
                      ).createShader(bounds),
                      child: Text(
                        'Started',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w800,color: Colors.white),
                      ),
                    ),
                    SizedBox(width: 4,),
                    SvgPicture.asset('assets/rightarrow.svg'),
                    SizedBox(height:  MediaQuery.of(context).size.height *0.09,)
                  ],
                ),
              ),
            )

          ],
        ),
      ),
    );
  }
}
