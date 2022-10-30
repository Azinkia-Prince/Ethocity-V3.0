import 'package:ethocity_v3/UI/Widget/customWidgets.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class kaggle extends StatefulWidget {
  
  @override
  State<kaggle> createState() => _kaggleState();
}

class _kaggleState extends State<kaggle> {

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: defaultWebpage(url: "https://www.kaggle.com/competitions"))
      // WebView(
      //   initialUrl: "https://ugv.edu.bd",
      //   javascriptMode: JavascriptMode.unrestricted,
      // )
    );
  }
}