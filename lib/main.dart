import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/bloc/cubit/app_cubit.dart';

import 'package:movies_app/pages/onboarding_page.dart';

import 'core/utils/app_strings.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    BlocProvider<AppCubit>(
      create: (context) => AppCubit(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // builder: DevicePreview.appBuilder,
      title: 'Movies App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: AppStrings.appFont,
      ),
      home: const OnboardingPage(),
    );
  }
}
