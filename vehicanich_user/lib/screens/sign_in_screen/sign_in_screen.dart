import 'package:flutter/material.dart';
import 'package:vehicanich/utils/app_colors.dart';
import 'package:vehicanich/utils/app_googlebutton.dart';
import 'package:vehicanich/utils/app_textfields.dart';
import 'package:vehicanich/utils/mediaquery.dart';
import 'package:vehicanich/widgets/login_screen_widgets/custom_divider.dart';
import 'package:vehicanich/widgets/login_screen_widgets/login_text.dart';
import 'package:vehicanich/utils/app_custom_button.dart';

class SigninScreen extends StatelessWidget {
  const SigninScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Myappallcolor().appbackgroundcolor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: Mymediaquery().mediaqueryheight(0.15, context)),
            const LoginScreenMainText(),
            SizedBox(height: Mymediaquery().mediaqueryheight(0.05, context)),
            const Inputfield(
              hinttext: 'Username',
            ),
            SizedBox(height: Mymediaquery().mediaqueryheight(0.02, context)),
            const Inputfield(
              hinttext: 'phone',
            ),
            SizedBox(height: Mymediaquery().mediaqueryheight(0.02, context)),
            const Inputfield(
              hinttext: 'password',
            ),
            SizedBox(height: Mymediaquery().mediaqueryheight(0.02, context)),
            const Inputfield(
              hinttext: 'Confirm password',
            ),
            SizedBox(height: Mymediaquery().mediaqueryheight(0.02, context)),
            CustomButton(
              buttontextcolor: Myappallcolor().colorwhite,
              text: 'Register',
              function: () {},
              fontSize: Mymediaquery().mediaqueryheight(0.02, context),
              color: Myappallcolor().buttonforgroundcolor,
            ),
            SizedBox(height: Mymediaquery().mediaqueryheight(0.03, context)),
            const CustomDivider(),
            SizedBox(height: Mymediaquery().mediaqueryheight(0.03, context)),
            CustomGoogleButton(
                bordercolor: Myappallcolor().colorwhite,
                color: Colors.transparent,
                function: () {},
                text: 'sign with google',
                fontSize: Mymediaquery().mediaqueryheight(0.02, context),
                buttontextcolor: Myappallcolor().colorwhite),
            SizedBox(height: Mymediaquery().mediaqueryheight(0.03, context)),
          ],
        ),
      ),
    );
  }
}
