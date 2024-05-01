import 'package:flutter/material.dart';
import 'package:vehicahich_admin/utils/app_colors.dart';
import 'package:vehicahich_admin/utils/app_mediaquery.dart';

class PendingContainerwithText extends StatelessWidget {
  final String text;
  const PendingContainerwithText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: Mymediaquery().mediaqueryheight(0.03, context),
        ),
        Container(
          decoration: BoxDecoration(
            border: Border.all(
                width: 2, color: Myappallcolor().appbarbackgroundcolor),
            color: Myappallcolor().colorwhite,
            borderRadius: BorderRadius.circular(12),
          ),
          width: Mymediaquery().mediaquerywidth(0.6, context),
          height: Mymediaquery().mediaqueryheight(0.1, context),
          child: Center(
              child: Text(
            text,
            style: TextStyle(
                fontSize: Mymediaquery().mediaquerywidth(0.01, context),
                fontWeight: FontWeight.w500),
          )),
        ),
      ],
    );
  }
}
