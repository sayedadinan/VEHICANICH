import 'package:flutter/material.dart';
import 'package:vehicanich_shop/utils/app_colors.dart';
import 'package:vehicanich_shop/utils/mediaquery.dart';
import 'package:vehicanich_shop/widgets/registration_widgets/otp_textfield.dart';

class OtpWaitingScreen extends StatelessWidget {
  const OtpWaitingScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appallcolor().appbackgroundcolor,
      appBar: AppBar(
        backgroundColor: Appallcolor().appbackgroundcolor,
        title: const Text('Phone Auth'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(
            height: Mymediaquery().mediaqueryheight(0.1, context),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.schedule,
                  color: Appallcolor().colorwhite,
                  size: Mymediaquery().mediaquerywidth(0.18, context)),
            ],
          ),
          SizedBox(
            height: Mymediaquery().mediaqueryheight(0.01, context),
          ),
          Text(
            'Your otp will send to your phone',
            style: TextStyle(
                color: Appallcolor().colorwhite,
                fontSize: Mymediaquery().mediaquerywidth(0.03, context)),
          ),
          SizedBox(
            height: Mymediaquery().mediaqueryheight(0.02, context),
          ),
          const SizedBox(
            child: OTPTextField(),
          ),
        ],
      ),
    );
  }
}
