import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vehicanich/blocs/login_bloc.dart/login_bloc.dart';
import 'package:vehicanich/screens/forgot_password/forgot_password.dart';
import 'package:vehicanich/utils/bottom_navigation/bottom_navigation.dart';
import 'package:vehicanich/utils/app_colors.dart';
import 'package:vehicanich/utils/app_googlebutton.dart';
import 'package:vehicanich/utils/app_textfields.dart';
import 'package:vehicanich/utils/mediaquery.dart';
import 'package:vehicanich/widgets/login_screen_widgets/custom_divider.dart';
import 'package:vehicanich/widgets/login_screen_widgets/forgot_button.dart';
import 'package:vehicanich/widgets/login_screen_widgets/login_text.dart';
import 'package:vehicanich/utils/app_custom_button.dart';

class Loginscreen extends StatelessWidget {
  const Loginscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginBloc, LoginBlocState>(
        listener: (context, state) {
          if (state is NavigateToForgetPage) {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Forgotpasswordscreen()));
          }
          if (state is NavigateToHome) {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => BottomBar()));
          }
        },
        child: Scaffold(
          backgroundColor: Myappallcolor().appbackgroundcolor,
          body: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: Mymediaquery().mediaqueryheight(0.2, context)),
                const LoginScreenMainText(),
                SizedBox(
                    height: Mymediaquery().mediaqueryheight(0.05, context)),
                const Inputfield(
                  hinttext: 'Enter your email',
                ),
                SizedBox(
                    height: Mymediaquery().mediaqueryheight(0.02, context)),
                const Inputfield(
                  icon: Icon(Icons.remove_red_eye_outlined),
                  hinttext: 'Enter your password',
                ),
                Forgetbutton(
                  function: () =>
                      context.read<LoginBloc>().add(ForgotButtonPressed()),
                ),
                SizedBox(height: Mymediaquery().mediaqueryheight(0.1, context)),
                CustomButton(
                  buttontextcolor: Myappallcolor().colorwhite,
                  text: 'Login',
                  function: () =>
                      context.read<LoginBloc>().add(LoginScreenButtonPressed()),
                  fontSize: Mymediaquery().mediaqueryheight(0.02, context),
                  color: Myappallcolor().buttonforgroundcolor,
                ),
                SizedBox(
                    height: Mymediaquery().mediaqueryheight(0.03, context)),
                const CustomDivider(),
                SizedBox(
                    height: Mymediaquery().mediaqueryheight(0.03, context)),
                CustomGoogleButton(
                    bordercolor: Myappallcolor().colorwhite,
                    color: Colors.transparent,
                    function: () {},
                    text: 'Login with google',
                    fontSize: Mymediaquery().mediaqueryheight(0.02, context),
                    buttontextcolor: Myappallcolor().colorwhite),
                SizedBox(
                    height: Mymediaquery().mediaqueryheight(0.03, context)),
                const CustomQuestion()
              ],
            ),
          ),
        ));
  }
}
