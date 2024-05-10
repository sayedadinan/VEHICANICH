import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vehicahich_admin/blocs/bloc/current_status_bloc.dart';
import 'package:vehicahich_admin/blocs/login_blocs/login_bloc.dart';
import 'package:vehicahich_admin/firebase_options.dart';
import 'package:vehicahich_admin/screens/login_screen/login_screen.dart';
import 'package:vehicahich_admin/utils/app_colors.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(MultiBlocProvider(providers: [
    BlocProvider(create: (context) => CurrentStatusBloc()),
    BlocProvider(create: (context) => LoginBLoc()),
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
      home: const LoginScreen(),
    );
  }
}
// weather_app/
// |-- lib/
// |   |-- bloc/
// |   |   |-- weather_bloc/
// |   |   |   |-- weather_bloc.dart
// |   |   |   |-- weather_event.dart
// |   |   |   |-- weather_state.dart
// |   |-- data/
// |   |   |-- repository/
// |   |   |   |-- weather_repo.dart
// |   |   |-- models/
// |   |   |   |-- weather.dart
// |   |-- presentation/
// |   |   |-- constants/
// |   |   |   |-- app_string.dart
// |   |   |   |-- colors.dart
// |   |   |   |-- image_assets.dart
// |   |   |   |-- styles.dart
// |   |   |-- screens/
// |   |   |   |-- search_page.dart
// |   |   |   |-- show_weather.dart
// |   |   |-- widgets/
// |   |   |   |-- column_data_widget.dart
// |   |   |   |-- pwh.dart
// |-- main.dart