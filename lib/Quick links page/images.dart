import 'package:ethocity_v3/UI/Widget/customWidgets.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class images extends StatefulWidget {
  
  @override
  State<images> createState() => _imagesState();
}

class _imagesState extends State<images> {

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("UGV - Gallery"),
      ),
      body: defaultWebpage(url: "https://ugv.edu.bd/gallery")
      // WebView(
      //   initialUrl: "https://ugv.edu.bd",
      //   javascriptMode: JavascriptMode.unrestricted,
      // )
    );
  }
}