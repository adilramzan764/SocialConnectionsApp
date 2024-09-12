import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../const/colors.dart';
import 'Widgets/CustomText.dart';

Widget buildDropdown_SignUpwidget({required String hintText}) {
  return DropdownButtonFormField<String>(
    decoration: InputDecoration(
      hintText: hintText,
      hintStyle: TextStyle(
          color: Colors.white, fontWeight: FontWeight.w400, fontSize: 15),
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: Colors.white),
      ),
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: Colors.white),
      ),
    ),
    style: TextStyle(color: ColorValues.white),
    dropdownColor: ColorValues.white,
    iconEnabledColor: Colors.white,
    items: ['Male', 'Female'].map((String value) {
      return DropdownMenuItem<String>(
        value: value,
        child: Text(value, style: TextStyle(color: Colors.black)),
      );
    }).toList(),
    onChanged: (_) {},
    selectedItemBuilder: (BuildContext context) {
      return ['Male', 'Female'].map<Widget>((String value) {
        return Text(
          value,
          style: TextStyle(color: Colors.white), // Change the color here
        );
      }).toList();
    },
  );
}

Widget buildTextField_SignUpWidget({required String hintText}) {
  return TextField(
    decoration: InputDecoration(
      hintText: hintText,
      hintStyle: TextStyle(
          color: Colors.white, fontWeight: FontWeight.w400, fontSize: 15),
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: Colors.white),
      ),
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: Colors.white),
      ),
    ),
    style: TextStyle(color: Colors.white),
  );
}

Widget buildCalendarField_SignUpWidget({required String hintText, required BuildContext context}) {
  TextEditingController dateController = TextEditingController();

  return GestureDetector(
    onTap: () async {
      DateTime? pickedDate = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1900),
        lastDate: DateTime(2100),
        builder: (BuildContext context, Widget? child) {
          return Theme(
            data: ThemeData.dark().copyWith(
              colorScheme: ColorScheme.dark(
                primary: ColorValues.darkpink,
                onPrimary: Colors.white,
                surface: ColorValues.bluemain,
                onSurface: Colors.white,
              ),
              dialogBackgroundColor: ColorValues.blue_backgroundcolor,
            ),
            child: child!,
          );
        },
      );

      if (pickedDate != null) {
        String formattedDate = "${pickedDate.day}/${pickedDate.month}/${pickedDate.year}";
        dateController.text = formattedDate;
      }
    },
    child: AbsorbPointer(
      child: TextField(
        controller: dateController,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(
              color: Colors.white, fontWeight: FontWeight.w400, fontSize: 15),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          suffixIcon: Padding(
            padding:  EdgeInsets.only(left: MediaQuery.of(context).size.width *0.05),
            child: Icon(Icons.arrow_drop_down,color: ColorValues.white,),
          )
        ),
        style: TextStyle(color: Colors.white),
      ),
    ),
  );
}


Widget CircularButtons(
    String icon, VoidCallback onpressed, double height, double width) {
  return InkWell(
    onTap: onpressed,
    child: Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [ColorValues.lightpink, ColorValues.darkpink],
          end: Alignment.topCenter,
          begin: Alignment.bottomLeft,
        ),
        shape: BoxShape.circle,
      ),
      child: Center(
        child: SvgPicture.asset(
          icon,
          height: 17,
          width: 17,
        ),
      ),
    ),
  );
}

Widget ProfileSetting_Widget(
    String icon, String title, String subtitle, BuildContext context) {
  double screenHeight = MediaQuery.of(context).size.height;
  double screenWidth = MediaQuery.of(context).size.width;

  return Container(
    height: screenHeight * 0.07,
    width: screenWidth,
    margin: EdgeInsets.only(bottom: screenHeight * 0.02),
    child: Row(
      children: [
        Center(
          child: Container(
            height: screenHeight * 0.08,
            width: screenWidth * 0.12,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: ColorValues.bluemain)),
            child: Transform.scale(
              scale: 0.55,
              child: SvgPicture.asset(
                icon,
              ),
            ),
          ),
        ),
        SizedBox(width: screenWidth * 0.03),
        if (subtitle.isNotEmpty)
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: screenHeight * 0.008,
              ),
              Text(
                title,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: screenHeight * 0.02,
                ),
              ),
              Text(
                subtitle,
                style: TextStyle(
                  color: ColorValues.darkyellow,
                  fontSize: screenHeight * 0.015,
                ),
              ),
            ],
          ),
        if (subtitle.isEmpty)
          Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontSize: screenHeight * 0.02,
            ),
          ),
      ],
    ),
  );
}

Widget roundedBorder_button(String icon, VoidCallback callback) {
  return InkWell(
    onTap: callback,
    child: Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Container(
          width: 40.0,
          height: 40.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: ColorValues.white, // Circle color
          ),
          child: Center(
            child: SvgPicture.asset(
              icon,
              // color: ColorValues.pinkmain, // Icon color
            ),
          ),
        ),
      ),
    ),
  );
}

Widget CircularButton_HomeScreen(
    IconData icon, Color color1, Color color2, VoidCallback voidCallback) {
  return InkWell(
    onTap: voidCallback,
    child: Container(
      width: 45,
      height: 45,
      decoration:
          BoxDecoration(shape: BoxShape.circle, gradient: LinearGradient(
            colors: [color1, color2],
            begin: Alignment.topCenter,
            end: Alignment.bottomLeft,
          ), boxShadow: [
        BoxShadow(
          color: CupertinoColors.systemBlue.withOpacity(0.1),
          spreadRadius: 1,
          blurRadius: 0.3,
          offset: Offset(-2, 6), // Corrected line
        )
      ]),
      child: Center(
        child: Icon(
          icon,color: ColorValues.white,
        ),
      ),
    ),
  );
}

Widget notificationItem(BuildContext context, String iconPath, String title,
    String description, String time) {
  double screenHeight = MediaQuery.of(context).size.height;
  double screenWidth = MediaQuery.of(context).size.width;

  return Column(
    children: [
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.11,
            width: MediaQuery.of(context).size.width * 0.17,
            decoration: BoxDecoration(
              border: Border.all(color: ColorValues.white,width: 1),
              image: DecorationImage(
                  image: AssetImage(iconPath), fit: BoxFit.cover),
              shape: BoxShape.circle,
            ),),
          SizedBox(width: screenWidth * 0.04),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  text: title,
                  color: ColorValues.darkyellow,
                  fontSize: screenHeight * 0.02,
                  fontWeight: FontWeight.w600,
                ),
                SizedBox(height: screenHeight * 0.005),
                CustomText(
                  text: description,
                  color: ColorValues.white,
                  fontSize: screenHeight * 0.017,
                ),
                SizedBox(height: screenHeight * 0.005),
                CustomText(
                  text: time,
                  color: ColorValues.bluemain,
                  fontSize: screenHeight * 0.014,
                ),
              ],
            ),
          ),
        ],
      ),
      SizedBox(height: screenHeight * 0.01),
      Divider(thickness: 0.7,color: ColorValues.white,),
      SizedBox(height: screenHeight * 0.01),



    ],
  );
}