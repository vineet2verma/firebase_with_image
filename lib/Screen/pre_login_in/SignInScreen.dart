
import 'package:flutter/material.dart';
import '../../Widget/round_button.dart';
import '../dashboard/dashboard_page.dart';
import 'SignUpScreen.dart';
class SignInScreen extends StatefulWidget {


  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  String name = "Sign In";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
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
                Text("Sign In Your Account",
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
                  onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => DashBoardPage(),)),
                  child: RoundButton(btnName: "Sign In")
                ),

                /// Create A/c - Sign Up
                SizedBox(height: 20,),
                Center(child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("If you don't have an account",style: TextStyle(fontSize: 18),),
                    TextButton(onPressed: () { 
                      Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpScreen(),) );
                          
                    },
                        child: Text("Create Account",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)),
                  ],
                )),

                /// Reset Password
                SizedBox(height: 5,),
                Center(child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("If you reset your password",style: TextStyle(fontSize: 18),),
                    TextButton(onPressed: () {
                      // Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpScreen(),) );
                    },
                        child: Text("Reset Password",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)),
                  ],
                )),


              ],
            ),
          ),
        ),
      ),
    );
  }
}
