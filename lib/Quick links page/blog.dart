import 'package:ethocity_v3/UI/Widget/customWidgets.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class blog extends StatefulWidget {
  
  @override
  State<blog> createState() => _blogState();
}

class _blogState extends State<blog> {

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(child: defaultWebpage(url: "https://news.ugv.edu.bd/"))
      // WebView(
      //   initialUrl: "https://ugv.edu.bd",
      //   javascriptMode: JavascriptMode.unrestricted,
      // )
    );
  }
}