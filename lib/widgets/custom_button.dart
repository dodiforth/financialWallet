import 'package:flutter/material.dart';

class CustomButtonFN extends StatelessWidget {
  final String text;
  final Color bgColor;
  final Color textColor;

  const CustomButtonFN({
    super.key,
    required this.text,
    required this.bgColor,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(40),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
        child: Text(
          text,
          style: TextStyle(
              color: textColor, fontSize: 17, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
