import 'package:flutter/material.dart';
import 'package:socialconnectionapp1/const/colors.dart';

class CustomTextField extends StatefulWidget {
  final String hint;
  final IconData? icon;
  final bool isPassword;
  final List<String>? dropdownItems; // Add this for dropdown

  CustomTextField({
    required this.hint,
    this.icon,
    this.isPassword = false,
    this.dropdownItems,
  });

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  FocusNode _focusNode = FocusNode();
  bool _isFocused = false;
  String? _selectedValue; // Add this for dropdown value

  @override
  void initState() {
    super.initState();
    _focusNode.addListener(() {
      setState(() {
        _isFocused = _focusNode.hasFocus;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.0),
            border: _isFocused
                ? Border.all(
              width: 2,
              color: ColorValues.green,
            )
                : null,
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(30.0),
            child: widget.dropdownItems == null
                ? TextField(
              focusNode: _focusNode,
              obscureText: widget.isPassword,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(20),
                filled: true,
                fillColor: _isFocused
                    ? ColorValues.white
                    : ColorValues.premiumgrey.withOpacity(0.4),
                hintText: widget.hint,
                hintStyle: TextStyle(
                  fontSize: screenHeight * 0.018,
                  color: _isFocused
                      ? Colors.transparent
                      : Colors.black,
                ),
                suffixIcon: widget.icon != null
                    ? Icon(
                  widget.icon,
                  size: screenHeight * 0.03,
                )
                    : null,
                border: InputBorder.none,
              ),
            )
                : DropdownButtonFormField<String>(
              value: _selectedValue,
              items: widget.dropdownItems!.map((String item) {
                return DropdownMenuItem<String>(
                  value: item,
                  child: Text(
                    item,
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.6), // Dull appearance
                    ),
                  ),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  _selectedValue = newValue;
                });
              },
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(20),
                filled: true,
                fillColor: _isFocused
                    ? ColorValues.white
                    : ColorValues.premiumgrey.withOpacity(0.4),
                hintText: widget.hint,
                hintStyle: TextStyle(
                  fontSize: screenHeight * 0.018,
                  color: _isFocused
                      ? Colors.transparent
                      : Colors.black,
                ),
                border: InputBorder.none,
              ),
            ),
          ),
        ),
        SizedBox(height: screenHeight * 0.02),
      ],
    );
  }
}
