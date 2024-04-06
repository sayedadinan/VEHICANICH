import 'package:flutter/material.dart';
import 'package:vehicanich/utils/app_colors.dart';
import 'package:vehicanich/widgets/onboarding_widgets/onboarding_image.dart';
import 'package:vehicanich/widgets/onboarding_widgets/onboarding_texts.dart';

class Splashscreen extends StatelessWidget {
  const Splashscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Myappallcolor().appbackgroundcolor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: MediaQuery.of(context).size.height * 0.1),
          const Myonboardmaintitle(
            title: 'VEHICANICH',
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.05),
          const Onboardingfirstimage(),
          SizedBox(height: MediaQuery.of(context).size.height * 0.2),
          const Myonboardingsmalltext(),
        ],
      ),
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
