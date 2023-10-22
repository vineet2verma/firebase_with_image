import 'dart:async';
import 'package:flutter/material.dart';

import '../../module/models.dart';
class SplashScreen extends StatefulWidget {


  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  String name = "Splash Screen";
  SplashScreen splashscreen = SplashScreen();


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    checkloginstatus();
  }

  checkloginstatus(){
    print("run");
    Timer(Duration(seconds: 3), () => model().islogin(context) ,  );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      body: Container(
        child: Center(child: Text(name)),
      ),
    );
  }
}
