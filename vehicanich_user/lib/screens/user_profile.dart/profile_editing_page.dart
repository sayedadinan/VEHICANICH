import 'package:flutter/material.dart';
import 'package:vehicanich/utils/app_colors.dart';
import 'package:vehicanich/utils/app_custom_button.dart';
import 'package:vehicanich/utils/app_textfields.dart';
import 'package:vehicanich/utils/mediaquery.dart';
import 'package:vehicanich/widgets/user_profile_widgets/user_appbar.dart';

class ProfileEditingPage extends StatelessWidget {
  const ProfileEditingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Myappallcolor().appbackgroundcolor,
      appBar: PreferredSize(
        preferredSize:
            Size.fromHeight(Mymediaquery().mediaqueryheight(0.08, context)),
        child: const CustomAppbarForProfile(
          text: 'Edit Profile',
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: Mymediaquery().mediaquerywidth(0.04, context),
        ),
        child: Column(
          children: [
            SizedBox(height: Mymediaquery().mediaqueryheight(0.04, context)),
            Row(
              children: [
                SizedBox(width: Mymediaquery().mediaquerywidth(0.11, context)),
                SizedBox(
                    width: Mymediaquery().mediaquerywidth(0.18, context),
                    height: Mymediaquery().mediaqueryheight(0.18, context),
                    child: Image.asset('assets/images/user-profile 1.png')),
              ],
            ),
            SizedBox(height: Mymediaquery().mediaqueryheight(0.04, context)),
            const Inputfield(hinttext: ''),
            SizedBox(height: Mymediaquery().mediaqueryheight(0.03, context)),
            const Inputfield(hinttext: ''),
            SizedBox(height: Mymediaquery().mediaqueryheight(0.03, context)),
            const Inputfield(hinttext: ''),
            SizedBox(height: Mymediaquery().mediaqueryheight(0.03, context)),
            CustomButton(
                color: Myappallcolor().buttonforgroundcolor,
                function: () {
                  // Navigator.of(context).push(MaterialPageRoute(
                  //     builder: (context) => const ProfileEditingPage()));
                  // context
                  //     .read<UserDetailsBloc>()
                  //     .add(UserDetailsEditingButtonClicked());
                },
                text: 'Save user',
                fontSize: Mymediaquery().mediaquerywidth(0.02, context),
                buttontextcolor: Myappallcolor().colorblack)
          ],
        ),
      ),
    );
  }
}
