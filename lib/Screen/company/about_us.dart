import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AboutUs extends StatefulWidget {
  // const CompanyPolicy({super.key});

  @override
  State<AboutUs> createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  String textFileData = "";

  getData() async {
    String response = await rootBundle.loadString("assets/about_us.txt");
    setState(() {
      textFileData = response;
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
        title: Text("About Us"),
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
            Text("About Us",
                style: TextStyle(color: Colors.teal, fontSize: 31)),
            SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              child: Container(
                  child: Text(textFileData,
                      style: TextStyle(fontSize: 18),textAlign: TextAlign.justify,
                  )
              ),
            ),
          ],
        ),
      ),
    );
  }
}
