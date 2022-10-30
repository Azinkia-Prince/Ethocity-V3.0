import 'package:ethocity_v3/UI/Widget/customWidgets.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class iqac extends StatefulWidget {
  
  @override
  State<iqac> createState() => _iqacState();
}

class _iqacState extends State<iqac> {

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: defaultWebpage(url: "https://ecourse.ugvedu.com/ClassAttendance"))
      // WebView(
      //   initialUrl: "https://ugv.edu.bd",
      //   javascriptMode: JavascriptMode.unrestricted,
      // )
    );
  }
}