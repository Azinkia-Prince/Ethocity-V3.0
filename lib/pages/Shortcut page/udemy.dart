import 'package:ethocity_v3/UI/Widget/customWidgets.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class udemy extends StatefulWidget {
  
  @override
  State<udemy> createState() => _udemyState();
}

class _udemyState extends State<udemy> {

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: defaultWebpage(url: "https://www.udemy.com/"))
      // WebView(
      //   initialUrl: "https://ugv.edu.bd",
      //   javascriptMode: JavascriptMode.unrestricted,
      // )
    );
  }
}