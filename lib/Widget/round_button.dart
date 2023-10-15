import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  final String btnName;
  const RoundButton({super.key, required this.btnName});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(21),
          color: Colors.blue
        ),
        child: Center(child: Text(btnName,style: TextStyle(fontSize: 26,fontWeight: FontWeight.w500 ))),
      ),
    );
  }


}
