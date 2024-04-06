import 'package:flutter/material.dart';
import 'package:vehicanich/utils/app_images.dart';

class Onboardingfirstimage extends StatelessWidget {
  const Onboardingfirstimage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Image(
        image: AssetImage(onboardingfirst),
        fit: BoxFit.contain,
      ),
    );
  }
}
