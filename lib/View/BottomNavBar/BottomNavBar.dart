import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:socialconnectionapp1/const/colors.dart';

import '../CallLogs/CallLogs_Screen.dart';
import '../Chat/Messages_Screen.dart';
import '../HomeScreen/HomeScreen.dart';
import '../ProfileSetting/ProfileSettings_Screen.dart';

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _currentIndex = 0;


  List<Widget> _pages = [
    HomeScreen(),
    Messages_Screen(),
    CallLogScreen(),
    ProfileSettings_Screen(),
  ];

  void _onNavBarTap(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: Stack(
        children: [
          BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: _currentIndex,
            onTap: _onNavBarTap,
            items: [
              BottomNavigationBarItem(
                icon: Transform.scale(
                    scale: 0.8,
                    child: SvgPicture.asset('assets/swipe.svg',color: _currentIndex==0 ? ColorValues.yellow : null,)),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Transform.scale(
                    scale: 0.9,
                    child: SvgPicture.asset('assets/chats.svg',color: _currentIndex==1 ? ColorValues.yellow : null,)),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Transform.scale(
                    scale: 0.9,

                    child: SvgPicture.asset('assets/call2.svg',color: _currentIndex==2 ? ColorValues.yellow : null,)),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Transform.scale(
                    scale: 0.9,

                    child: SvgPicture.asset('assets/user.svg',color: _currentIndex==3 ? ColorValues.yellow : null,)),
                label: '',
              ),
            ],
            selectedItemColor: ColorValues.yellow,
            unselectedItemColor: Colors.grey,
            showUnselectedLabels: false,
            selectedLabelStyle: TextStyle(fontSize: 0),
            unselectedLabelStyle: TextStyle(fontSize: 0),
            elevation: 0,
          ),
          Positioned(
            top: 0,
            left:  _currentIndex==0 ? screenWidth * 0.065 : _currentIndex==1 ? screenWidth * 0.3 : _currentIndex==2? screenWidth *0.57 : screenWidth *0.82,
            child: Container(
              height: 5,
              width: MediaQuery.of(context).size.width / 8,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xffE1D044), Color(0xff00E5FA)],
                  end: Alignment.topCenter,
                  begin: Alignment.bottomLeft,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}




