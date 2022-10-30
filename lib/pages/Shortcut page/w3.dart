import 'package:ethocity_v3/UI/Widget/customWidgets.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class w3 extends StatefulWidget {
  
  @override
  State<w3> createState() => _w3State();
}

class _w3State extends State<w3> {

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: defaultWebpage(url: "https://www.w3schools.com/"))
      // WebView(
      //   initialUrl: "https://ugv.edu.bd",
      //   javascriptMode: JavascriptMode.unrestricted,
      // )
    );
  }
}