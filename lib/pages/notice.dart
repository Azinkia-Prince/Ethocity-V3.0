import 'package:ethocity_v3/UI/Widget/customWidgets.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class notice extends StatefulWidget {
  
  @override
  State<notice> createState() => _noticeState();
}

class _noticeState extends State<notice> {

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Notice"),
      ),
      body: defaultWebpage(url: "https://ugv.edu.bd/notice")
      // WebView(
      //   initialUrl: "https://ugv.edu.bd",
      //   javascriptMode: JavascriptMode.unrestricted,
      // )
    );
  }
}