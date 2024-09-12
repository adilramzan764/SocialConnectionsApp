import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:socialconnectionapp1/const/colors.dart';

class Appbar_CustomWidget extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: ColorValues.blue_backgroundcolor,
      elevation: 0,
      leading: IconButton(
        icon: Icon(Icons.arrow_back, color: Colors.white),
        onPressed: () {
Navigator.pop(context);        },
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}