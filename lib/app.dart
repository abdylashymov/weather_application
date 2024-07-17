import 'package:flutter/material.dart';
import 'package:weather_application/home_page.dart';
import 'package:weather_application/theme/app_colors.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: AppColors.orangeGradient,
        ),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
