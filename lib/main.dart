import 'package:firebase_with_image/Screen/dashboard/dashboard_page.dart';
import 'package:firebase_with_image/Screen/help/help_page.dart';
import 'package:firebase_with_image/Screen/pre_login_in/splash_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        appBarTheme: AppBarTheme(
          elevation: 0,
          centerTitle: true,
          backgroundColor: Colors.transparent,
        ),
      ),
      home:
      // SplashScreen(),
      DashBoardPage(),
      // HelpPage(),
    );
  }
}

