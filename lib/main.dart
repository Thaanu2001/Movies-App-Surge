import 'package:flutter/material.dart';

import 'core/constants/app_constants.dart';
import 'core/service_locator/service_locator.dart';
import 'features/home/presentation/screens/home_page.dart';

void main() {
  setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Movies App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        canvasColor: AppConstants.backgroundColor,
        fontFamily: 'Poppins',
      ),
      home: const HomePage(),
    );
  }
}
