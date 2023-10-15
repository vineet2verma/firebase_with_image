import 'dart:math';
import 'package:firebase_with_image/Screen/post_page2.dart';
import 'package:firebase_with_image/Screen/pre_login_in/SignInScreen.dart';
import 'package:flutter/material.dart';

import '../module/models.dart';

class PostPage1 extends StatefulWidget {
  @override
  State<PostPage1> createState() => _PostPage1State();
}

class _PostPage1State extends State<PostPage1> {
  String name = "Dashboard";
  Random random = model().random;
  static bool switchvalue = true;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          /// Switch
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Switch(
              value: switchvalue,
              activeColor: Colors.yellow,
              onChanged: (value) {
                switchvalue==true?switchvalue=false:switchvalue=true;
                 setState(() {});
              },
            ),
          ),
          /// Log Out
          InkWell(
              child: Padding(
                padding: const EdgeInsets.only(right: 15),
                child: Icon(Icons.login_outlined, size: 31),
              ),
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SignInScreen() ),
              ),
          ),
        ],
        title: Text(name),
      ),
      
      body: Column(
        children: [
          Row(
            children: [
              Text("Login :- ",style: TextStyle(fontSize: 21),),
            ],
          ),
          Divider(color: Colors.black,thickness: 2,indent: 15,endIndent: 15,),

          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                mainAxisExtent: 200,
              ),
              itemCount: model().listdata.length,
              itemBuilder: (context, index) {
              return InkWell(
                onTap: () => tapfunc(index),
                child: SizedBox(
                  height: 250,
                  width: double.infinity,
                  child: buildCard(index),
                ),
              );

            },),
          ),

        ],
      ),


      // floatingActionButton: FloatingActionButton(
      //   child: Icon(Icons.add),
      //   onPressed: () {
      //
      //   },
      // ),
    );
  }

  Card buildCard(int index) {
    return Card(
                  margin: EdgeInsets.all(10),
                  shape: OutlineInputBorder(borderRadius: BorderRadius.circular(11)),
                  color: Color.fromRGBO(random.nextInt(300),random.nextInt(300),random.nextInt(300), 1),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.network(model().listdata[index]['img'],
                            fit: BoxFit.fill ),
                        Text(model().listdata[index]['Product'],style: TextStyle(fontSize: 21,fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                );
  }
  
  tapfunc(index){

    Navigator.push(context, MaterialPageRoute(builder: (context) => PostPage2(indexno: index ), ));
  }

}
