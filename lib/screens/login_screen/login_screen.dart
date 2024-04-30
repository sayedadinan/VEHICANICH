import 'package:flutter/material.dart';
import 'package:vehicahich_admin/screens/enquery_screen/enquery_requests_screen.dart';
import 'package:vehicahich_admin/utils/app_colors.dart';
import 'package:vehicahich_admin/utils/app_custom_button.dart';
import 'package:vehicahich_admin/utils/app_mediaquery.dart';
import 'package:vehicahich_admin/utils/app_textfield.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Myappallcolor().appbarbackgroundcolor,
      ),
      backgroundColor: Myappallcolor().colorwhite,
      body: Column(
        children: [
          SizedBox(
            height: Mymediaquery().mediaqueryheight(0.18, context),
          ),
          Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxHeight: 400),
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
                            height:
                                Mymediaquery().mediaqueryheight(0.06, context),
                          ),
                        ),
                        Inputfield(
                          fillingcolor: Myappallcolor().colorwhite,
                          hinttext: 'Enter your username',
                        ),
                        ConstrainedBox(
                          constraints: const BoxConstraints(maxHeight: 30),
                          child: SizedBox(
                            height:
                                Mymediaquery().mediaqueryheight(0.06, context),
                          ),
                        ),
                        Inputfield(
                          fillingcolor: Myappallcolor().colorwhite,
                          hinttext: 'Enter your password',
                        ),
                        ConstrainedBox(
                          constraints: const BoxConstraints(maxHeight: 30),
                          child: SizedBox(
                            height:
                                Mymediaquery().mediaqueryheight(0.06, context),
                          ),
                        ),
                        ConstrainedBox(
                          constraints: const BoxConstraints(
                              maxWidth: 300, maxHeight: 40),
                          child: CustomButton(
                            text: 'Login',
                            function: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => EnqueryScreen()));
                            },
                            bordercolor: Colors.transparent,
                            buttontextcolor: Myappallcolor().colorwhite,
                            color: Myappallcolor().buttonforgroundcolor,
                            fontSize:
                                Mymediaquery().mediaqueryheight(0.02, context),
                          ),
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
    );
  }
}
