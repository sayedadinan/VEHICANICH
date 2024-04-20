import 'package:flutter/material.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';

// class CustomGradientButton extends StatelessWidget {
//   final String text;
//   final TextStyle textStyle;
//   final List<Color> gradientColors;
//   final double width;
//   final double height;
//   final double borderRadius;
//   final VoidCallback onPressed;

//   const CustomGradientButton({
//     Key? key,
//     required this.text,
//     required this.textStyle,
//     required this.gradientColors,
//     required this.width,
//     required this.height,
//     required this.borderRadius,
//     required this.onPressed,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return GradientButton(
//       text: text,
//       textStyle: textStyle,
//       gradientColors: gradientColors,
//       width: width,
//       height: height,
//       borderRadius: borderRadius,
//       onPressed: onPressed,
//     );
//   }
// }

class CustomAnimatedButton extends StatelessWidget {
  final double width;
  final String text;
  final Color selectedTextColor;
  final TransitionType transitionType;
  final TextStyle textStyle;

  const CustomAnimatedButton({
    Key? key,
    required this.width,
    required this.text,
    required this.selectedTextColor,
    required this.transitionType,
    required this.textStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomAnimatedButton(
      width: width,
      text: text,
      selectedTextColor: selectedTextColor,
      transitionType: transitionType,
      textStyle: textStyle,
    );
  }
}
