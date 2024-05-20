import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vehicahich_admin/blocs/login_blocs/login_bloc.dart';
import 'package:vehicahich_admin/screens/tabs_main_screen/tabs_main_screen.dart';
import 'package:vehicahich_admin/utils/app_colors.dart';
import 'package:vehicahich_admin/utils/app_custom_button.dart';
import 'package:vehicahich_admin/utils/app_mediaquery.dart';
import 'package:vehicahich_admin/utils/app_textfield.dart';
import 'package:vehicahich_admin/utils/constant_variables/textcontrollers.dart';
import 'package:vehicahich_admin/utils/validators.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginBLoc, LoginButtonState>(
      listener: (context, state) {
        if (state is LoginSuccess) {
          Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(builder: (context) => MainScreen()),
            (route) => false,
          );
        }
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Myappallcolor().appbarbackgroundcolor,
        ),
        backgroundColor: Myappallcolor().colorwhite,
        body: Column(
          children: [
            SizedBox(
              height: Mymediaquery().mediaqueryheight(0.14, context),
            ),
            Center(
              child: ConstrainedBox(
                constraints:
                    const BoxConstraints(maxHeight: 580, maxWidth: 450),
                child: Card(
                  shadowColor: Myappallcolor().appbarbackgroundcolor,
                  elevation: 28,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(13),
                      color: Myappallcolor().appbarbackgroundcolor,
                    ),
                    width: Mymediaquery().mediaquerywidth(0.62, context),
                    height: Mymediaquery().mediaqueryheight(0.53, context),
                    child: Center(
                      child: Column(
                        children: [
                          ConstrainedBox(
                            constraints: const BoxConstraints(maxHeight: 30),
                            child: SizedBox(
                              height: Mymediaquery()
                                  .mediaqueryheight(0.06, context),
                            ),
                          ),
                          Inputfield(
                            validator: (value) =>
                                Validators().validateEmpty('username', value),
                            controller: usernameController,
                            fillingcolor: Myappallcolor().colorwhite,
                            hinttext: 'Enter your username',
                          ),
                          ConstrainedBox(
                            constraints: const BoxConstraints(maxHeight: 30),
                            child: SizedBox(
                              height: Mymediaquery()
                                  .mediaqueryheight(0.06, context),
                            ),
                          ),
                          Inputfield(
                            controller: passwordController,
                            fillingcolor: Myappallcolor().colorwhite,
                            hinttext: 'Enter your password',
                            validator: (value) =>
                                Validators().validatePassword(value),
                          ),
                          ConstrainedBox(
                            constraints: const BoxConstraints(maxHeight: 30),
                            child: SizedBox(
                              height: Mymediaquery()
                                  .mediaqueryheight(0.06, context),
                            ),
                          ),
                          ConstrainedBox(
                            constraints: const BoxConstraints(
                                maxWidth: 300, maxHeight: 40),
                            child: CustomButton(
                                text: 'Login',
                                function: () {
                                  context
                                      .read<LoginBLoc>()
                                      .add(LoginButtonPressed());
                                },
                                bordercolor: Colors.transparent,
                                buttontextcolor: Myappallcolor().colorwhite,
                                color: Myappallcolor().buttonforgroundcolor,
                                fontSize: Mymediaquery()
                                    .mediaqueryheight(0.02, context)),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
