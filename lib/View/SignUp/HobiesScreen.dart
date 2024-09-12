import 'package:flutter/material.dart';
import 'package:socialconnectionapp1/View/BottomNavBar/BottomNavBar.dart';
import 'package:socialconnectionapp1/const/colors.dart';


import '../../Utils/Widgets/CustomButton.dart';
import '../../Utils/Widgets/CustomText.dart';
import '../../Utils/Widgets/Hobieswidget_Signup.dart';

class HobiesScreen extends StatefulWidget {
  @override
  _HobiesScreenState createState() => _HobiesScreenState();
}

class _HobiesScreenState extends State<HobiesScreen> {
  final List<Map<String, dynamic>> hobbies = [
    {'title': 'Photography', 'icon': 'assets/camera.svg'},
    {'title': 'Cooking', 'icon': 'assets/cooking.svg'},
    {'title': 'Video Games', 'icon': 'assets/vediogames.svg'},
    {'title': 'Music', 'icon': 'assets/music.svg'},
    {'title': 'Travelling', 'icon': 'assets/travelling.svg'},
    {'title': 'Shopping', 'icon': 'assets/shopping.svg'},
    {'title': 'Speeches', 'icon': 'assets/speeches.svg'},
    {'title': 'Art & Crafts', 'icon': 'assets/art.svg'},
    {'title': 'Swimming', 'icon': 'assets/swimming.svg'},
    {'title': 'Drinking', 'icon': 'assets/drinking.svg'},
    {'title': 'Extreme Sports', 'icon': 'assets/sports.svg'},
    {'title': 'Fitness', 'icon': 'assets/fitness.svg'},
  ];

  final Set<int> selectedHobbies = {};

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorValues.blue_backgroundcolor,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {},
        ),
        actions: [
          TextButton(
            onPressed: () {},
            child: Text('Skip', style: TextStyle(color: Colors.yellow)),
          ),
        ],
      ),
      backgroundColor: ColorValues.blue_backgroundcolor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomText(
              color: Colors.white,
              fontSize: screenHeight * 0.038,
              fontWeight: FontWeight.bold,
              text: 'Hobbies, Interests',
            ),
            SizedBox(height: screenHeight * 0.02),
            CustomText(
              color: Colors.white,
              fontSize: screenHeight * 0.018,
              fontWeight: FontWeight.w500,
              text: 'Share your likes & passion with others',
            ),
            Container(
              height: ((screenHeight * 0.1) * hobbies.length) / 2,
              child: GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 2.7,
                  crossAxisSpacing: 16.0,
                  mainAxisSpacing: 16.0,
                ),
                itemCount: hobbies.length,
                itemBuilder: (context, index) {
                  return HobiesWidget_SignUp(
                    title: hobbies[index]['title'],
                    icon: hobbies[index]['icon'],
                    isSelected: selectedHobbies.contains(index),
                    onTap: () {
                      setState(() {
                        if (selectedHobbies.contains(index)) {
                          selectedHobbies.remove(index);
                        } else {
                          selectedHobbies.add(index);
                        }
                      });
                    },
                  );
                },
              ),
            ),
            SizedBox(height: screenHeight * 0.027),
            InkWell(
              onTap: () {},
              child: ShaderMask(
                blendMode: BlendMode.srcIn,
                shaderCallback: (bounds) => LinearGradient(
                  colors: [Color(0xffCDC53E), Color(0xff00E5FA).withOpacity(0.8)],
                  end: Alignment.topCenter,
                  begin: Alignment.bottomLeft,
                ).createShader(bounds),
                child: Text(
                  'Load More',
                  style: TextStyle(
                    fontSize: screenHeight * 0.027,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.03),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.22),
              child: CustomButton(
                text: 'SUBMIT',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => BottomNavBar()),
                        // (Route<dynamic> route) => false, // Remove all previous routes
                  );
                },
              ),
            ),
            SizedBox(height: screenHeight * 0.03),
          ],
        ),
      ),
    );
  }
}
