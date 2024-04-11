import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:vehicanich/services/firebase_auth_implementation/firebase_auth_service.dart';
import 'package:vehicanich/utils/app_colors.dart';
import 'package:vehicanich/utils/app_googlebutton.dart';
import 'package:vehicanich/utils/app_textfields.dart';
import 'package:vehicanich/utils/bottom_navigation/bottom_navigation.dart';
import 'package:vehicanich/utils/mediaquery.dart';
import 'package:vehicanich/widgets/login_screen_widgets/custom_divider.dart';
import 'package:vehicanich/widgets/login_screen_widgets/login_text.dart';
import 'package:vehicanich/utils/app_custom_button.dart';

// ignore: must_be_immutable
class SigninScreen extends StatelessWidget {
  SigninScreen({super.key});
  TextEditingController userNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController passconfController = TextEditingController();
  final FirebaseAuthService auth = FirebaseAuthService();
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
            Inputfield(hinttext: 'Username', controller: userNameController),
            SizedBox(height: Mymediaquery().mediaqueryheight(0.02, context)),
            Inputfield(hinttext: 'Email', controller: emailController),
            SizedBox(height: Mymediaquery().mediaqueryheight(0.02, context)),
            Inputfield(hinttext: 'password', controller: passwordController),
            SizedBox(height: Mymediaquery().mediaqueryheight(0.02, context)),
            Inputfield(
                hinttext: 'Confirm password', controller: passconfController),
            SizedBox(height: Mymediaquery().mediaqueryheight(0.02, context)),
            CustomButton(
              buttontextcolor: Myappallcolor().colorwhite,
              text: 'Register',
              function: () => signUp(context),
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

  signUp(BuildContext context) async {
    // String username = userNameController.text;
    String email = emailController.text;
    String password = passwordController.text;
    User? user = await auth.sighUpWIthEmailAndPassword(email, password);
    if (user != null) {
      print('user is successfully created');
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => BottomBar()));
    } else {
      print('some error happened');
    }
  }
}
