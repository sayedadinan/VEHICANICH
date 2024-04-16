import 'package:flutter/material.dart';
import 'package:vehicanich_shop/utils/app_colors.dart';
import 'package:vehicanich_shop/utils/app_images.dart';
import 'package:vehicanich_shop/utils/mediaquery.dart';

class CustomContainer extends StatelessWidget {
  final double width;
  const CustomContainer({super.key, required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Mymediaquery().mediaquerywidth(width, context),
      height: Mymediaquery().mediaqueryheight(0.12, context),
      color: Appallcolor().placeholderimagecolor,
      child: const Center(
        child: Image(image: AssetImage(placeholderimage)),
      ),
    );
  }
}
