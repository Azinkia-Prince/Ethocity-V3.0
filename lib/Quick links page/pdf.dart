import 'package:ethocity_v3/UI/Widget/customWidgets.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class pdf extends StatefulWidget {
  
  @override
  State<pdf> createState() => _pdfState();
}

class _pdfState extends State<pdf> {

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: defaultWebpage(url: ""))
      // WebView(
      //   initialUrl: "https://ugv.edu.bd",
      //   javascriptMode: JavascriptMode.unrestricted,
      // )
    );
  }
}