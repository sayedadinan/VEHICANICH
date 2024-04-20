import 'package:flutter/material.dart';
import 'package:vehicanich_shop/utils/app_colors.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double fontSize;

  const CustomText({
    Key? key,
    required this.text,
    required this.fontSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontSize: fontSize, color: Appallcolor().textcolor),
    );
  }
}
