import 'package:flutter/material.dart';

class HelpPage extends StatelessWidget {
  const HelpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HELP FORM"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Text("YOUR DETAILS "),),
            Container(
              decoration: BoxDecoration(
                  color: Colors.tealAccent,
                  borderRadius: BorderRadius.circular(21)),
              height: 250,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      Flexible(
                        flex: 3,
                        child: buildTextFormField("Name",1),
                      ),
                      Flexible(
                        flex: 2,
                        child: buildTextFormField("Deptt",1)),
                    ],
                  ),
                  buildTextFormField("Staff Requirement",1),
                ],
              ),
            ),
            SizedBox(height: 10,),
            Container(
              child: Text("ISSUE SECTION"),),
            SizedBox(height: 10,),
            Container(
              decoration: BoxDecoration(
                  color: Colors.tealAccent,
                  borderRadius: BorderRadius.circular(21)),
              height: 300,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  buildTextFormField("Staff Requirement",1),
                  buildTextFormField("Chanllenge Faced / Issue",2),
                  buildTextFormField("Best Solution 1",1),
                  buildTextFormField("Best Solution 2",1),
                  buildTextFormField("Best Solution 3",1),
                ],
              ),
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () { },
                  child: Text("Clear/Reset")),
                ElevatedButton(
                  onPressed: () { },
                  child: Text("Submit")),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildTextFormField(String lblName, int maxLine ) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: TextFormField(
        maxLines: maxLine,
        onTap: () {},
        decoration: InputDecoration(
          filled: true,
          labelText: lblName,
          focusColor: Colors.grey,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(21)),
        ),
      ),
    );
  }
}




// class TxtFuncClass extends StatelessWidget {
//   String? lblName ;
//
//   TxtFuncClass({super.key, required lblName});
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(2.0),
//       child: TextFormField(
//         onTap: () {},
//         decoration: InputDecoration(
//           filled: true,
//           labelText: lblName,
//           focusColor: Colors.grey,
//           border: OutlineInputBorder(borderRadius: BorderRadius.circular(21)),
//         ),
//       ),
//     );
//   }
// }
