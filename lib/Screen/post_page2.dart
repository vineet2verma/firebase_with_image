import 'package:flutter/material.dart';

import '../Widget/round_button.dart';
import '../module/models.dart';

class PostPage2 extends StatefulWidget {
  int indexno;

  PostPage2({required this.indexno});

  @override
  State<PostPage2> createState() => _PostPage2State();
}

class _PostPage2State extends State<PostPage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 200,
              width: double.infinity,
              child: Card(
                color: Colors.yellow,
                child: Center(
                    child: Image.network(model().listdata[widget.indexno]['img'],fit: BoxFit.cover, )
                ),
              ),
            ),
            SizedBox(
              height: 50,
              child: Center(child: Text((widget.indexno+1).toString(),style: TextStyle(fontSize: 31),)),
            ),
            /// Task
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  labelText: "Task",
                  labelStyle: TextStyle(fontSize: 21,color: Colors.black),

                  filled: true,
                  fillColor: Colors.grey,
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(11))
                ),

              ),
            ),
            /// Sub Task
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                    labelText: "Sub Task",
                    labelStyle: TextStyle(fontSize: 21,color: Colors.black),

                    filled: true,
                    fillColor: Colors.grey,
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(11))
                ),
              ),
            ),
            
            /// Button
            RoundButton(btnName: "Submit"),
            SizedBox(height: 20,),


          ],
        ),
      ),
    );
  }
}
