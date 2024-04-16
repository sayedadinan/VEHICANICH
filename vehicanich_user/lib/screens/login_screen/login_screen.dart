import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vehicanich/blocs/login_bloc/login_bloc.dart';
import 'package:vehicanich/screens/forgot_password/forgot_password.dart';
import 'package:vehicanich/services/firebase_auth_implementation/firebase_auth_service.dart';
import 'package:vehicanich/utils/app_motionsnackbar.dart';
import 'package:vehicanich/utils/app_textvalidators.dart';
import 'package:vehicanich/utils/bottom_navigation/bottom_navigation.dart';
import 'package:vehicanich/utils/app_colors.dart';
import 'package:vehicanich/utils/app_googlebutton.dart';
import 'package:vehicanich/utils/app_textfields.dart';
import 'package:vehicanich/utils/mediaquery.dart';
import 'package:vehicanich/utils/page_transition/page_fade_transition.dart';
import 'package:vehicanich/widgets/login_screen_widgets/custom_divider.dart';
import 'package:vehicanich/widgets/login_screen_widgets/forgot_button.dart';
import 'package:vehicanich/widgets/login_screen_widgets/login_text.dart';
import 'package:vehicanich/utils/app_custom_button.dart';

// ignore: must_be_immutable
class Loginscreen extends StatelessWidget {
  Loginscreen({super.key});

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final FirebaseAuthService auth = FirebaseAuthService();
  final GlobalKey<FormState> signupKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: signupKey,
      child: BlocListener<LoginBloc, LoginBlocState>(
          listener: (context, state) {
            if (state is NavigateToForgetPage) {
              Navigator.pushReplacement(context,
                  FadeTransitionPageRoute(child: Forgotpasswordscreen()));
            }
            if (state is NavigateToHome) {
              Navigator.pushReplacement(
                  context, FadeTransitionPageRoute(child: BottomBar()));
            }
            if (state is LoginErrorHappened) {
              // _displaySuccessMotionToast();
              displayErrorMotionToast(
                context,
                'Login error',
                'your email or password is incorrect ',
              );
              // _displaySuccessMotionToast(context);
              // CustomSnackBar(
              //         message: 'your email or password is incorrect',
              //         backgroundColor: Myappallcolor().emergencybuttoncolor)
              //     .show(context);
            }
          },
          child: Scaffold(
            backgroundColor: Myappallcolor().appbackgroundcolor,
            body: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                      height: Mymediaquery().mediaqueryheight(0.2, context)),
                  const LoginScreenMainText(),
                  SizedBox(
                      height: Mymediaquery().mediaqueryheight(0.05, context)),
                  Inputfield(
                    validator: (value) => Validators().validateEmail(value),
                    keyboardType: TextInputType.emailAddress,
                    hinttext: 'Enter your email',
                    controller: emailController,
                  ),
                  SizedBox(
                      height: Mymediaquery().mediaqueryheight(0.02, context)),
                  Inputfield(
                    validator: (value) => Validators().validatePassword(value),
                    icon: const Icon(Icons.remove_red_eye_outlined),
                    hinttext: 'Enter your password',
                    controller: passwordController,
                  ),
                  Forgetbutton(
                    function: () =>
                        context.read<LoginBloc>().add(ForgotButtonPressed()),
                  ),
                  SizedBox(
                      height: Mymediaquery().mediaqueryheight(0.1, context)),
                  CustomButton(
                    buttontextcolor: Myappallcolor().colorwhite,
                    text: 'Login',
                    function: () {
                      if (signupKey.currentState!.validate()) {
                        context.read<LoginBloc>().add(LoginScreenButtonPressed(
                            email: emailController,
                            password: passwordController));
                      }
                    },
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
                      function: () {
                        signInWithGoogle(context);
                      },
                      text: 'Login with google',
                      fontSize: Mymediaquery().mediaqueryheight(0.02, context),
                      buttontextcolor: Myappallcolor().colorwhite),
                  SizedBox(
                      height: Mymediaquery().mediaqueryheight(0.03, context)),
                  const CustomQuestion()
                ],
              ),
            ),
          )),
    );
  }

  // signIn(BuildContext context) async {
  //   String email = emailController.text;
  //   String password = passwordController.text;
  //   User? user = await auth.sighInWIthEmailAndPassword(email, password);
  //   if (user != null) {
  //     print('user is successfully signedIn');
  //     // ignore: use_build_context_synchronously
  //     Navigator.of(context)
  //         .push(MaterialPageRoute(builder: (context) => BottomBar()));
  //   } else {
  //     print('some error happened');
  //   }
  // }
}
