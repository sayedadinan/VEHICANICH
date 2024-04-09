import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vehicanich/blocs/bottom_nav/bottom_nav_bloc.dart';
import 'package:vehicanich/blocs/login_bloc.dart/login_bloc.dart';
import 'package:vehicanich/blocs/onboarding_blocs/onboarding_bloc.dart';
import 'package:vehicanich/screens/onboarding/onboarding_screen.dart';
import 'package:vehicanich/utils/app_colors.dart';

void main(List<String> args) {
  runApp(MultiBlocProvider(providers: [
    BlocProvider(create: (context) => OnboardingBloc()),
    BlocProvider(create: (context) => LoginBloc()),
    BlocProvider(create: (context) => BottomNavigationBloc())
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: Myappallcolor().buttonforgroundcolor),
        useMaterial3: true,
      ),
      home: Splashscreen(),
    );
  }
}
