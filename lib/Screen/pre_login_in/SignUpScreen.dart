import 'package:flutter/material.dart';

import '../../Widget/round_button.dart';
import 'SignInScreen.dart';


class SignUpScreen extends StatefulWidget {


  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  String name = "Sign Up";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
      ),
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.greenAccent,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 80,),
                Text("Create Your Account",
                  style: TextStyle(color: Colors.black,fontSize: 36,fontWeight: FontWeight.bold),),
                SizedBox(height: 20,),
                /// Email id
                Text("Email",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18),),
                SizedBox(height: 10,),
                TextField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.email_outlined,size: 31,),
                      fillColor: Colors.grey,filled: true,
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(11))
                  ),

                ),

                /// Password
                SizedBox(height: 20,),
                Text("Password",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18),),
                SizedBox(height: 10,),
                TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock_open_outlined,size: 31,),
                    fillColor: Colors.grey,filled: true,
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(11)),
                  ),
                ),
                SizedBox(height: 20,),

                /// Button
                InkWell(
                    onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => SignInScreen(),)),
                    child: RoundButton(btnName: "Sign Up")
                ),



              ],
            ),
          ),
        ),
      ),
    );
  }
}
