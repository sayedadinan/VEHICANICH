import 'package:flutter/material.dart';
import 'package:vehicanich/screens/onboarding/onboarding_items.dart';
//

class Splashscreen extends StatelessWidget {
  Splashscreen({super.key});
  final controller = OnboardingItems();
  final pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        itemCount: controller.items.length,
        itemBuilder: (context, index) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Image.asset(controller.items[index].image)],
          );
        },
        controller: pageController,
      ),
      // backgroundColor: Myappallcolor().appbackgroundcolor,
      // body: Column(
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   children: [
      //     SizedBox(height: Mymediaquery().mediaqueryheight(0.1, context)),
      //     const Myonboardmaintitle(
      //       title: 'VEHICANICH',
      //     ),
      //     SizedBox(height: Mymediaquery().mediaqueryheight(0.05, context)),
      //     const Onboardingfirstimage(),
      //     SizedBox(height: Mymediaquery().mediaquerywidth(0.02, context)),
      //     const Myonboardingsmalltext(),
      //   ],
      // ),
    );
  }
}
// project_name/
// ├── android/
// ├── ios/
// ├── lib/
// │   ├── blocs/
// │   │   ├── authentication/
// │   │   │   ├── authentication_bloc.dart
// │   │   │   └── authentication_event.dart
// │   │   ├── data/
// │   │   │   ├── data_bloc.dart
// │   │   │   └── data_event.dart
// │   │   └── ...
// │   ├── models/
// │   │   ├── user.dart
// │   │   └── ...
// │   ├── repositories/
// │   │   ├── authentication_repository.dart
// │   │   └── data_repository.dart
// │   ├── screens/
// │   │   ├── login_screen.dart
// │   │   ├── home_screen.dart
// │   │   └── ...
// │   ├── services/
// │   │   ├── firebase_auth_service.dart
// │   │   ├── firebase_firestore_service.dart
// │   │   └── ...
// │   ├── utils/
// │   │   ├── firebase_utils.dart
// │   │   └── ...
// │   ├── widgets/
// │   │   ├── common_widget1.dart
// │   │   ├── common_widget2.dart
// │   │   └── ...
// │   ├── app.dart
// │   ├── main.dart
// ├── test/
// ├── pubspec.yaml
// ├── README.md
// └── ...
