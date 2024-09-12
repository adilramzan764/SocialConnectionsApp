import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:flutter_svg/svg.dart';

import '../../Utils/Custom_Widgets.dart';
import '../../const/colors.dart';
import '../NotificationScreen/NotificationScreen.dart';
import '../UserProfileScreen/UserProfileScreen.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  CardSwiperController controller = CardSwiperController();

  final List<String> candidates = [
    'assets/model1.jpg',
    'assets/model3.jpg',
    'assets/model4.jpg',
    'assets/model6.jpg',
  ];
  final List<String> categories = [
    'Sport',
    'Cookinging',
    'Reading',
    'Netflix',
  ];

  // final cards = candidates.map(ExampleCard.new).toList();

  bool _onSwipe(
    int previousIndex,
    int? currentIndex,
    CardSwiperDirection direction,
  ) {
    debugPrint(
      'The card $previousIndex was swiped to the ${direction.name}. Now the card $currentIndex is on top',
    );
    return true;
  }

  bool _onUndo(
    int? previousIndex,
    int currentIndex,
    CardSwiperDirection direction,
  ) {
    debugPrint(
      'The card $currentIndex was undod from the ${direction.name}',
    );
    return true;
  }


  @override
  Widget build(BuildContext context) {
     int activeIndex=0;
     double screenheight=MediaQuery.of(context).size.height;
     double screenwidth=MediaQuery.of(context).size.width;


     return Scaffold(
      backgroundColor: ColorValues.blue_backgroundcolor,
      body: Column(
        children: [
          SizedBox(height: screenheight*0.06,),
          Padding(
            padding:  EdgeInsets.only(right: 20.0),
            child: Align(
              alignment: Alignment.topRight,
              child: InkWell(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => NotificationScreen()),
                    // (Route<dynamic> route) => false, // Remove all previous routes
                  );
                },
                child: Container(
                  height: screenheight * 0.03,
                  width: screenwidth * 0.05,
                  child: Stack(
                    clipBehavior: Clip.none, // Allows the circle to be positioned outside the bell icon
                    children: [
                      Transform.scale(
                scale: 1.4,
                        child: SvgPicture.asset(
                          'assets/bell icon.svg',
                          color: ColorValues.yellow,
                        ),
                      ),
                      Positioned(
                        right: -screenwidth * 0.01, // Adjust this value to fine-tune the position
                        top: -screenheight * 0.01,  // Adjust this value to fine-tune the position
                        child: CircleAvatar(
                          backgroundColor: ColorValues.bluemain,
                          radius: screenwidth * 0.016,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),

          SizedBox(height: MediaQuery.of(context).size.height * 0.05),
          Center(
            child: Container(
              height: MediaQuery.of(context).size.height * 0.62,
              width: double.infinity,
              child: CardSwiper(
                controller: controller,
                cardsCount: candidates.length,
                onSwipe: _onSwipe,
                // onUndo: _onUndo,
                numberOfCardsDisplayed: 3,
                backCardOffset: const Offset(-20, -30),
                // padding: const EdgeInsets.all(14.0),
                cardBuilder: (
                  context,
                  index,
                  horizontalThresholdPercentage,
                  verticalThresholdPercentage,
                ) {
                  // Use Image.asset to display the image
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => UserProfileScreen()),
                      );
                    },
                    child: Container(
                      height: 200,
                      width: 200,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                              image: AssetImage(
                                candidates[index],
                              ),
                              fit: BoxFit.cover)),
                      // child: Image.asset(
                      //   candidates[index],
                      //   fit: BoxFit.cover,
                      // ),
                      child:
                      // horizontalThresholdPercentage > 0
                      //     ? Align(
                      //         alignment: Alignment.center,
                      //         child: CircularButton_HomeScreen(
                      //             'assets/fillheart.svg',
                      //             ColorValues.bluemain,
                      //             () {}))
                      //     : horizontalThresholdPercentage < 0
                      //         ? Align(
                      //             alignment: Alignment.center,
                      //             child: CircularButton_HomeScreen(
                      //                 'assets/cancel.svg',
                      //                 ColorValues.white,
                      //                 () {}))
                      //         :
                      Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Padding(
                                    padding:  EdgeInsets.all(screenheight *0.02 ),
                                    child: Column(
                                      children: [
                                        Spacer(),

                                        Row(
                                          children: [
                                            Align(
                                              alignment: Alignment.centerLeft,
                                              child: Container(
                                                height: MediaQuery.of(context).size.height * 0.15,
                                                width: MediaQuery.of(context).size.width * 0.25,
                                                decoration: BoxDecoration(
                                                  border: Border.all(color: ColorValues.white,width: 2),
                                                  image: DecorationImage(
                                                      image: AssetImage('assets/model4.jpg'), fit: BoxFit.cover),
                                                  shape: BoxShape.circle,
                                                ),

                                              ),
                                            ),
                                            SizedBox(width: 8,),

                                            Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'Anna\n Mcconaughey',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w600,
                                                      color: ColorValues.white,
                                                      fontSize: 22),
                                                ),
                                                Text(
                                                  '1.5 km away',
                                                  style: TextStyle(
                                                      fontWeight: FontWeight.w400,
                                                      color: ColorValues.white,
                                                      fontSize: 16),
                                                ),

                                              ],
                                            ),
                                          ],
                                        ),

                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: List.generate(5, (index) {
                                                return Container(
                                                  margin: EdgeInsets.symmetric(horizontal: 5.0),
                                                  width: MediaQuery.of(context).size.width *0.023,
                                                  height: MediaQuery.of(context).size.height *0.023,
                                                  decoration: BoxDecoration(
                                                    border: Border.all(color: ColorValues.white),
                                                    shape: BoxShape.circle,
                                                    color: index == activeIndex ? ColorValues.white : Colors.grey.withOpacity(0.1),
                                                  ),
                                                );
                                              }),
                                            ),
                                            Transform.scale(
                                                scale: 1.3,
                                                child: SvgPicture.asset('assets/Chat2.svg'))

                                          ],
                                        ),
                                        // SizedBox(
                                        //   height: 10,
                                        // ),
                                      ],
                                    ),
                                  ),
                                ),
                    ),
                  );
                },
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircularButton_HomeScreen(Icons.thumb_up,
                    Color(0xff34F07F), Color(0xff10AA7C), () {}),
                CircularButton_HomeScreen(CupertinoIcons.heart_fill,
                    Color(0xffFFBC7D), Color(0xffEF5533), () {}),
                CircularButton_HomeScreen(
                    Icons.thumb_down,                     Color(0xffFF7D95),Color(0xffEF3349),
                     () {}),
                CircularButton_HomeScreen(
                    Icons.info,                     Color(0XFF2285FA),Color(0xff1B40C1),
                    () {}),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
