import 'package:flutter/material.dart';
import 'package:vehicanich_shop/utils/app_colors.dart';
import 'package:vehicanich_shop/utils/app_textfields.dart';
import 'package:vehicanich_shop/utils/mediaquery.dart';
import 'package:vehicanich_shop/widgets/sign_in_widgets/all_texts.dart';

class SigninScreen extends StatelessWidget {
  const SigninScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Appallcolor().appbackgroundcolor,
        body: SingleChildScrollView(
            child: Column(children: [
          SizedBox(height: Mymediaquery().mediaqueryheight(0.15, context)),
          const MainText(text: '       Welcome to our \n community!'),
          SizedBox(height: Mymediaquery().mediaqueryheight(0.05, context)),
          const Smallheading(text: 'Details', width: 0.3),
          SizedBox(height: Mymediaquery().mediaqueryheight(0.02, context)),
          const Inputfield(hinttext: 'Name'),
          SizedBox(height: Mymediaquery().mediaqueryheight(0.02, context)),
          const Inputfield(hinttext: 'Email'),
          SizedBox(height: Mymediaquery().mediaqueryheight(0.02, context)),
          const Inputfield(hinttext: 'phone'),
          SizedBox(height: Mymediaquery().mediaqueryheight(0.02, context)),
          const Inputfield(hinttext: 'Whatsapp Number'),
          SizedBox(height: Mymediaquery().mediaqueryheight(0.02, context)),
          const Inputfield(hinttext: 'Shop Name'),
          SizedBox(height: Mymediaquery().mediaqueryheight(0.02, context)),
          const Inputfield(hinttext: 'choose your shop location'),
          SizedBox(height: Mymediaquery().mediaqueryheight(0.02, context)),
          const Inputfield(hinttext: 'Address', maxLines: 4),
          SizedBox(height: Mymediaquery().mediaqueryheight(0.02, context)),
          const Inputfield(hinttext: 'Description', maxLines: 4),
          SizedBox(height: Mymediaquery().mediaqueryheight(0.02, context)),
          const Smallheading(text: 'working time', width: 0.2),
        ])));
  }
}
