import 'package:flutter/material.dart';
import 'package:vehicanich/utils/app_colors.dart';

class Myonboardmaintitle extends StatelessWidget {
  final String title;
  const Myonboardmaintitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        color: Myappallcolor().textcolor,
        fontSize: MediaQuery.of(context).size.width * 0.1,
      ),
      textAlign: TextAlign.center,
    );
  }
}

class Myonboardingsmalltext extends StatelessWidget {
  const Myonboardingsmalltext({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Text(
        'We make your car\nsmarter',
        style: TextStyle(
          color: Myappallcolor().textcolor,
          fontSize: MediaQuery.of(context).size.width * 0.07,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
