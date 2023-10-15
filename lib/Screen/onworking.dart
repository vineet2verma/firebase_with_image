
import 'package:flutter/material.dart';

class DefaultPage extends StatelessWidget {
  const DefaultPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Center(child: Text("Team Already Working On it",style: TextStyle(fontSize: 31,fontWeight: FontWeight.bold),))),
    );
  }
}
