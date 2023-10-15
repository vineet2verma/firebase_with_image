import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CompanyPolicy extends StatefulWidget {
  // const CompanyPolicy({super.key});

  @override
  State<CompanyPolicy> createState() => _CompanyPolicyState();
}

class _CompanyPolicyState extends State<CompanyPolicy> {
  String textFileData = "";

  getData() async {
    String response = await rootBundle.loadString("assets/policy_notepad.txt");
    setState(() {
    textFileData = response.toString();
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Company Policy"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Text("Company Policy",
                style: TextStyle(color: Colors.teal, fontSize: 31)),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: Container(
                  width: double.infinity,
                  height: 300,
                  child: Text(textFileData,
                      style: TextStyle(fontSize: 31),textAlign: TextAlign.justify,
                  )
              ),
            ),
          ],
        ),
      ),
    );
  }
}
