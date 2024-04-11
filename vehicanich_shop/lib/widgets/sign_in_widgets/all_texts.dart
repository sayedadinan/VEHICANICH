import 'package:flutter/material.dart';
import 'package:vehicanich_shop/utils/mediaquery.dart';
import 'package:vehicanich_shop/widgets/onboarding_widgets/onboardinng_texts.dart';

class MainText extends StatelessWidget {
  final String text;
  const MainText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Myonboardingsmalltext(
          subtitle: text,
        ),
        SizedBox(
          width: Mymediaquery().mediaquerywidth(0.18, context),
        )
      ],
    );
  }
}

class Smallheading extends StatelessWidget {
  final String text;
  final double width;
  const Smallheading({super.key, required this.text, required this.width});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Myonboardingsmalltext(
          subtitle: text,
        ),
        SizedBox(
          width: Mymediaquery().mediaquerywidth(width, context),
        )
      ],
    );
  }
}
