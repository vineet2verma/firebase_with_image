import 'package:flutter/material.dart';
import 'dart:math';
import '../../module/models.dart';
import '../pre_login_in/SignInScreen.dart';
import 'dashboard_json.dart';

class DashBoardPage extends StatefulWidget {
  @override
  State<DashBoardPage> createState() => _DashBoardPageState();
}

class _DashBoardPageState extends State<DashBoardPage> {
  String userName = "Vineet Verma";
  Random random = model().random;
  static bool switchvalue = true;
  TextEditingController searchController = TextEditingController();




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        automaticallyImplyLeading: false,
        actions: [
          /// Switch
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Switch(
              value: switchvalue,
              activeColor: Colors.yellow,
              onChanged: (value) {
                switchvalue == true ? switchvalue = false : switchvalue = true;
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
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SignInScreen()),
            ),
          ),
        ],
        title: Text(
          "Login: \t${userName}",
          style: TextStyle(fontSize: 21, color: Colors.black),
        ),
      ),
      body: Column(
        children: [
          /// Search
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Flexible(
                    child: TextField(
                      controller: searchController,
                      decoration: InputDecoration(
                        labelText: "Search",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11),
                        )
                      ),
                  ),
                ),
              ],
            ),
          ),
          Divider(
            color: Colors.black,
            thickness: 2,
            indent: 15,
            endIndent: 15,
          ),
          /// List View Builder
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 250,
                mainAxisExtent: 250,
              ),
              itemCount: dashboardlist.length, // model().listdata.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () => tapfunc(index),

                  child:
                  buildCard(index),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Card buildCard(int index) {
    return Card(

      margin: EdgeInsets.all(10),
      shape: OutlineInputBorder(borderRadius: BorderRadius.circular(11)),
      color: Color.fromRGBO(
          random.nextInt(300), random.nextInt(300), random.nextInt(300), 1),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.network(dashboardlist[index]['Image'], fit: BoxFit.fill),
            Text(
              dashboardlist[index]['Name'],
              style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }

  tapfunc(index) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => dashboardlist[index]['Page'], ));
    // Navigator.push(context, MaterialPageRoute(builder: (context) => PostPage2(indexno: index ), ));
  }
}
