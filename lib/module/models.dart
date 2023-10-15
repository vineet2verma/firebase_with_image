import 'dart:math';
import 'package:flutter/material.dart';

import '../Screen/dashboard/dashboard_page.dart';
import '../Screen/pre_login_in/SignInScreen.dart';

// import 'package:firebase_core/firebase_core.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_messaging/firebase_messaging.dart';
// import 'package:firebase_storage/firebase_storage.dart';
// import 'package:firebase_ui_auth/firebase_ui_auth.dart';
// import 'package:fluttertoast/fluttertoast.dart';
// import 'package:http/http.dart';
// import 'package:intl/intl.dart';
// import 'package:cached_network_image/cached_network_image.dart';

class model {
  final Random random = Random();

  bool userstatus = true;
  void islogin(context) {
    if (userstatus == false) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => SignInScreen()));
    }
    else {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => DashBoardPage()));
    }
  }

  List<Map<String,dynamic>> listdata = List.generate(20, (index) =>
  {'Product': 'Product ${index+1}',
    'img':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRKeRPJ6Cu_cdiLiDb_ffrn6r0oi09bJXoGyA&usqp=CAU'  })
      .toList();


}


