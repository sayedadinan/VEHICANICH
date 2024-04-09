import 'package:flutter/material.dart';
import 'package:vehicanich/utils/app_colors.dart';
import 'package:vehicanich/utils/mediaquery.dart';
import 'package:vehicanich/widgets/user_profile_widgets/text_containers.dart';
import 'package:vehicanich/widgets/user_profile_widgets/user_appbar.dart';

class UserProfileScreen extends StatelessWidget {
  const UserProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Myappallcolor().appbackgroundcolor,
        appBar: PreferredSize(
            preferredSize:
                Size.fromHeight(Mymediaquery().mediaqueryheight(0.08, context)),
            child: const CustomAppbarForProfile()),
        body: Padding(
          padding: EdgeInsets.only(
              left: Mymediaquery().mediaquerywidth(0.04, context),
              right: Mymediaquery().mediaquerywidth(0.04, context)),
          child: Column(children: [
            SizedBox(height: Mymediaquery().mediaqueryheight(0.04, context)),
            Row(children: [
              SizedBox(width: Mymediaquery().mediaquerywidth(0.11, context)),
              SizedBox(
                  width: Mymediaquery().mediaquerywidth(0.18, context),
                  height: Mymediaquery().mediaqueryheight(0.18, context),
                  child: Image.asset('assets/images/user-profile 1.png'))
            ]),
            SizedBox(height: Mymediaquery().mediaqueryheight(0.04, context)),
            const TextContainer(text: 'Adnan'),
            SizedBox(height: Mymediaquery().mediaqueryheight(0.03, context)),
            const TextContainer(text: 'email@gmail.com'),
            SizedBox(height: Mymediaquery().mediaqueryheight(0.03, context)),
            const TextContainer(text: '97444515774'),
            SizedBox(height: Mymediaquery().mediaqueryheight(0.03, context)),
            const TextContainer(text: 'password')
          ]),
        ));
  }
}
