import 'package:flutter/material.dart';
import 'package:vehicanich_shop/utils/app_colors.dart';
import 'package:vehicanich_shop/utils/mediaquery.dart';

class BodyServiceContainer extends StatelessWidget {
  final String text;
  const BodyServiceContainer({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Mymediaquery().mediaquerywidth(0.41, context),
      height: Mymediaquery().mediaqueryheight(0.08, context),
      decoration: BoxDecoration(
        color: Appallcolor().placeholderimagecolor,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Row(
        children: [Text(text)],
      ),
    );
  }
}
